 <?php
session_start();
 include("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../index.php','_self')</script>";

 }
							 ob_start();
							   $qty= $_POST['qty'];
							   $cart_id = $_GET['cartid'];
							     $q="UPDATE cart
								 SET qty  = '$qty'
					             where cart_id ='$cart_id'";
			                   mysqli_query($con,$q);?>
                               <script>
							window.location.replace("all_rfq.php");
</script>
												  