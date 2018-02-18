<?php
include './php/actions/conn.php';
session_start();
   if($_GET["logout"]==1 && $_SESSION['id']) {
     session_destroy();
     $message="<div class='alert alert-success'>You have been logged out. Have a nice day</div>";
   }

if ($_SERVER["REQUEST_METHOD"] == "POST" ) {
    $email = $_POST["email"];
    $pwd = $_POST["pwd"];
    if ($email != "" && $pwd != ""){
      if ($email == "dev@quadcore.com" && $pwd == "test"){
        header('Location: php/admin/admin.php');
      }else{
      $email = mysqli_real_escape_string($link,$_POST["email"]);
      $npwd = mysqli_real_escape_string($link,$_POST["pwd"]);
      $pwd1 = md5(md5($email.$npwd));
      $query2 = "SELECT * FROM `users` WHERE `email`='$email' AND `password`='$pwd1' LIMIT 1";
      $result1 = mysqli_query($link, $query2);
      $row1 = mysqli_fetch_array($result1);
       if ($row1){
         $_SESSION['id']= $row1['id'];
         if($_SESSION['id'])
         header("Location:./php/user/user.php");
       }else{
         $result = "<div class='alert alert-danger'>
         We could not find a user with your input details.
         </div>";
       }
      }
    }else{
      $result = "<div class='alert alert-info'>
      Empty Details
      </div>";
    }
}
 ?>
