<?php 

session_start();
unset($_SESSION['c_id']);
session_destroy();
header("location:../index.php");
?>