<?php
$key_id = "rzp_test_wVg5OY1NY0axVz";
$secret = "P7zyEBGVpowrimZ12eEIt9Qu"; ?>
<form action="https://www.example.com/payment/success/" method="POST">
    <script src="https://checkout.razorpay.com/v1/checkout.js" data-key="<?= $key_id ?>" data-amount="29935"  data-currency="INR" data-order_id="order_CgmcjRh9ti2lP7" data-buttontext="Pay with Razorpay" data-name="Acme Corp" data-description="A Wild Sheep Chase is the third novel by Japanese author Haruki Murakami" data-image="https://example.com/your_logo.jpg" data-prefill.name="Gaurav Kumar" data-prefill.email="gaurav.kumar@example.com" data-theme.color="#F37254"></script>
    <input type="hidden" custom="Hidden Element" name="hidden">
</form>