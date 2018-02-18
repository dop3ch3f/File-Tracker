<?php
$servername = "localhost";
$username = "root";
$password = "root";
$db = "filetracker";

$link = mysqli_connect($servername,$username,$password,$db);

if (!($link)) {
  die("Connection Failed:".mysqli_connect_error());
}
?>
