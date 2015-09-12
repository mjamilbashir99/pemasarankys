<?php 
	include("includes/db.php"); 
	
	if(isset($_GET['delete_c'])){
	
	$delete_id = $_GET['delete_c'];
	$back='';
	if(isset($_GET['back']))
	$back = $_GET['back'];
	
	$delete_c = "delete from customers where customer_id='$delete_id'"; 
	
	$run_delete = mysqli_query($con, $delete_c); 
	
	if($run_delete){
	
	echo "<script>alert('A customer has been deleted!')</script>";
	// write email code to both for deleted
	
	
	
	if($back=='del')
		echo "<script>window.open('index.php?delete_customer','_self')</script>";
	else
		echo "<script>window.open('index.php?view_customers','_self')</script>";
	}
	
	}





?>