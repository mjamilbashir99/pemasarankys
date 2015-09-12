 <?php
session_start();
 include("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../index.php','_self')</script>";

 }
	$order_id=$_GET['order_id'];
  $q="UPDATE orders SET status_order  = 'cancel'  where order_id= '$order_id'";
		    	mysqli_query($con,$q);
				?>
				<script>
              		window.location.replace("received_quotations.php");
                </script>