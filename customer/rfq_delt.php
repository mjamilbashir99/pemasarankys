 <?php
 session_start();
if($_SESSION['customer_email']  == "")
header("location:../index.php");
 include("functions/functions.php");
							 ob_start();
							    $cart_id = $_GET['cartid'];
							    $q="DELETE FROM `cart` WHERE `cart_id`='$cart_id'";
			                   mysqli_query($con,$q);
							 
												  ?>
												   <script>
							window.location.replace("all_rfq.php");
</script>