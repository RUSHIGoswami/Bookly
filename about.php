<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'header.php'; ?>

   <div class="heading">
      <h3>about us</h3>
      <p> <a href="home.php">home</a> / about </p>
   </div>

   <section class="about">

      <div class="flex">

         <div class="image">
            <img src="images/about-img.jpg" alt="">
         </div>

         <div class="content">
            <h3>why choose us?</h3>
            <p>We offer a tremendous gathering of books in the various classifications of Fiction, Non-fiction, Biographies, History, Religions, Self-Help, Children. We likewise move in immense accumulation of Investments and Management, Medical, College and School content references books proposed by various foundations as schedule the nation over.</p>
            <p> Other than this, we likewise offer an expansive gathering of E-Books at reasonable valuing.</p>
            <a href="contact.php" class="btn">contact us</a>
         </div>

      </div>

   </section>

   <section class="reviews">

      <h1 class="title">client's reviews</h1>

      <div class="box-container">

         <div class="box">
            <img src="images/pic-1.png" alt="">
            <p>This is the best place to purchase the all boks at one place at very affordable price.I always prefere to reads the book hardcopy not online.</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Jay Vasavada</h3>
         </div>

         <div class="box">
            <img src="images/pic-2.png" alt="">
            <p>Best accessibility and availability for books.Reasonable price and best place on internet to buy books.</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Harshwardhan Pande</h3>
         </div>

         <div class="box">
            <img src="images/pic-3.png" alt="">
            <p>Best online book store all books are available website's UI is very good. we can easily access all books without any problem.</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
            </div>
            <h3>Rahul Yadav</h3>
         </div>

      </div>

   </section>

   <section class="authors">

      <h1 class="title">Our Developers</h1>

      <div class="box-container">

         <div class="box">
            <img src="images/author-1.jpg" alt="">
            <div class="share">
               <a href="https://github.com/Shivanand6342" target="_blank" class="fab fa-github"></a>
               <a href="https://codepen.io/Shivanand6342" target="_blank" class="fab fa-codepen"></a>
               <a href="https://www.instagram.com/not_shiva__/" target="_blank" class="fab fa-instagram"></a>
               <a href="https://www.linkedin.com/in/shivanand-vishwakarma-bb6580121/" target="_blank" class="fab fa-linkedin"></a>
            </div>
            <h3>Shivanand Vishwakarma</h3>
         </div>

         <div class="box">
            <img src="images/author-2.jpg" alt="">
            <div class="share">
               <a href="https://github.com/RUSHIGoswami" target="_blank" class="fab fa-github"></a>
               <a href="https://codepen.io/rushiweb25" target="_blank" class="fab fa-codepen"></a>
               <a href="https://www.hackerrank.com/91900103079_" target="_blank" class="fab fa-hackerrank"></a>
               <a href="https://www.linkedin.com/in/rushi-goswami/" target="_blank" class="fab fa-linkedin"></a>
            </div>
            <h3>Rushi Goswami</h3>
         </div>

         <div class="box">
            <img src="images/author-3.jpg" alt="">
            <div class="share">
               <a href="https://github.com/mahekajudia/" target="_blank" class="fab fa-github"></a>
               <a href="https://twitter.com/MahekAjudia" target="_blank" class="fab fa-twitter"></a>
               <a href="https://www.instagram.com/__.mahekajudia.__/" target="_blank" class="fab fa-instagram"></a>
               <a href="https://www.linkedin.com/in/mahek-ajudia-361185197/" target="_blank" class="fab fa-linkedin"></a>
            </div>
            <h3>Mahek Ajudia</h3>
         </div>
      </div>

   </section>







   <?php include 'footer.php'; ?>

   <!-- custom js file link  -->
   <script src="js/script.js"></script>

</body>

</html>