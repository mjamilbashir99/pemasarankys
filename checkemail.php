<?php
include("includes/db.php");

$sql = "SELECT email FROM customers WHERE c_email = " .$_POST['c_email'];
$select = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($select);

if (mysqli_num_rows > 0) {
    echo "Email already exists.";
}
?>