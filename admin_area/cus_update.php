<?php  include("../functions/functions.php");
	ob_start();
	if(isset($_POST['submit']))
	{
		$back='';
		if(isset($_REQUEST['back']))
		$back = $_REQUEST['back'];
		$user_id = $_GET['user_id'];
		$status = $_POST['status'];
		//$user_id = $_POST['customer_id'];
		$q="UPDATE customers
		SET status  = '$status'
		where customer_id ='$user_id'";
		mysqli_query($con,$q);
		if($back=='del')
			echo "<script>window.open('index.php?delete_customer','_self')</script>";
		else
			echo "<script>window.open('index.php?view_customers','_self')</script>";
	}
?>
                              