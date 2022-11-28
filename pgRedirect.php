<?php
include 'config.php';
header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");
// following files need to be included
require_once("./lib/config_paytm.php");
require_once("./lib/encdec_paytm.php");


session_start();
$user_id = $_SESSION['user_id'];

$checkSum = "";
$paramList = array();
// if (isset($_POST['order_btn'])) {

$name = mysqli_real_escape_string($conn, $_POST['name']);
$number = $_POST['number'];
$email = mysqli_real_escape_string($conn, $_POST['email']);
$method = mysqli_real_escape_string($conn, $_POST['method']);
$address = mysqli_real_escape_string($conn, 'flat no. ' . $_POST['flat'] . ', ' . $_POST['street'] . ', ' . $_POST['city'] . ', ' . $_POST['country'] . ' - ' . $_POST['pin_code']);
$placed_on = date('d-M-Y');

$cart_total = 0;
$cart_products[] = '';

$cart_query = mysqli_query($conn, "SELECT * FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
if (mysqli_num_rows($cart_query) > 0) {
	while ($cart_item = mysqli_fetch_assoc($cart_query)) {
		$cart_products[] = $cart_item['name'] . ' (' . $cart_item['quantity'] . ') ';
		$sub_total = ($cart_item['price'] * $cart_item['quantity']);
		$cart_total += $sub_total;
		$cart_id = $cart_item['id'];
	}
}

$total_products = implode(', ', $cart_products);

$order_query = mysqli_query($conn, "SELECT * FROM `orders` WHERE name = '$name' AND number = '$number' AND email = '$email' AND method = '$method' AND address = '$address' AND total_products = '$total_products' AND total_price = '$cart_total'") or die('query failed');

if ($cart_total == 0) {
	$message[] = 'your cart is empty';
} else {
	if (mysqli_num_rows($order_query) > 0) {
		$message[] = 'order already placed!';
	} else {
		if ($method == "COD") {
			mysqli_query($conn, "INSERT INTO `orders`(user_id, name, number, email, method, address, total_products, total_price, placed_on) VALUES('$user_id', '$name', '$number', '$email', '$method', '$address', '$total_products', '$cart_total', '$placed_on')") or die('query failed');
			$message[] = 'order placed successfully!';
			mysqli_query($conn, "DELETE FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
			header("Location: home.php");
		} else {
			$ORDER_ID = $cart_id;
			$CUST_ID = $user_id;
			$INDUSTRY_TYPE_ID = $_POST["INDUSTRY_TYPE_ID"];
			$CHANNEL_ID = $_POST["CHANNEL_ID"];
			$TXN_AMOUNT = $cart_total;
			// Create an array having all required parameters for creating checksum.
			$paramList["MID"] = PAYTM_MERCHANT_MID;
			$paramList["ORDER_ID"] = $ORDER_ID;
			$paramList["CUST_ID"] = $CUST_ID;
			$paramList["INDUSTRY_TYPE_ID"] = $INDUSTRY_TYPE_ID;
			$paramList["CHANNEL_ID"] = $CHANNEL_ID;
			$paramList["TXN_AMOUNT"] = $TXN_AMOUNT;
			$paramList["WEBSITE"] = PAYTM_MERCHANT_WEBSITE;
			$paramList["CALLBACK_URL"] = "http://localhost/bookly/pgResponse.php";
			//Here checksum string will return by getChecksumFromArray() function.
			$checkSum = getChecksumFromArray($paramList, PAYTM_MERCHANT_KEY);
			mysqli_query($conn, "INSERT INTO `orders`(user_id, name, number, email, method, address, total_products, total_price, placed_on, payment_status) VALUES('$user_id', '$name', '$number', '$email', '$method', '$address', '$total_products', '$cart_total', '$placed_on', 'completed')") or die('query failed');
			$message[] = 'order placed successfully!';
			mysqli_query($conn, "DELETE FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
		}
	}
}
// }

?>
<html>

<head>
	<title>Merchant Check Out Page</title>
</head>

<body>
	<center>
		<h1>Please do not refresh this page...</h1>
	</center>
	<form method="post" action="<?php echo PAYTM_TXN_URL ?>" name="f1">
		<table border="1">
			<tbody>
				<?php
				foreach ($paramList as $name => $value) {
					echo '<input type="hidden" name="' . $name . '" value="' . $value . '">';
				}
				?>
				<input type="hidden" name="CHECKSUMHASH" value="<?php echo $checkSum ?>">
			</tbody>
		</table>
		<script type="text/javascript">
			document.f1.submit();
		</script>
	</form>
</body>

</html>