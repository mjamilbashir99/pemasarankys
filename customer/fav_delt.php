 <?php
session_start();
 include("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../index.php','_self')</script>";

 }

							 ob_start();
							 $cid = $_SESSION['c_id'];
							    $p_id = $_GET['p_id'];
							    $q="DELETE FROM `favorites` WHERE `Product_id`='$p_id' and user_id='$cid'";
			                   mysqli_query($con,$q);
							 
												  ?>
												   <script>
							window.location.replace("view_favorites.php");
</script>