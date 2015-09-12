
<br>

<h2 style="text-align:center; ">Do you really want to DELETE your account?</h2>

<form action="" method="post">

<br>
<input type="submit" name="yes" value="Yes I want" /> 
<input type="submit" name="no" value="No I was Joking" />


</form>

<?php 

 include_once("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../index.php','_self')</script>";

 }
include("../includes/db.php"); 

	$user = $_SESSION['customer_email']; 
	
	if(isset($_POST['yes'])){
	$delete_customer = "update customers set is_delete=1,status=0 where customer_email='$user'";
	$run_customer = mysqli_query($con,$delete_customer); 
	
	// write email code to both for reqeust has recieved
	$to=$_SESSION['customer_email'];
				$subject = "Pemasaran KYS Your Account Delete";
				$message = "
		
						<html> 
						<body> 
								
								<p>Your Account Delete kindly contact Admin</p>
								<p>Yours sincerely,</p> 
								<p>Pemasaran KYS Team</p> 
						</body> 
						</html> 
						"; 
						// Always set content-type when sending HTML email
		
						$headers = "MIME-Version: 1.0" . "\r\n"; 
						$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n"; 
						// More headers 
						$headers .= 'From:Pemasaran KYS <info@Pemasaran.KYS.com>' . "\r\n"; 
		 
						mail($to,$subject,$message,$headers);
						$user_email=$_SESSION['customer_email'];
						$to="admin@pemasarankys.my" ;
				$subject = "Pemasaran KYS  Account Delete";
				$message = "
		
						<html> 
						<body> 
								
								<p>$user_email Account Delete kindly contact Admin</p>
								<p>Yours sincerely,</p> 
								<p>Pemasaran KYS Team</p> 
						</body> 
						</html> 
						"; 
						// Always set content-type when sending HTML email
		
						$headers = "MIME-Version: 1.0" . "\r\n"; 
						$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n"; 
						// More headers 
						$headers .= 'From:Pemasaran KYS <info@Pemasaran.KYS.com>' . "\r\n"; 
		 
						mail($to,$subject,$message,$headers);
						
	echo "<script>alert('your account request has been received!')</script>";
	echo "<script>window.open('../index.php','_self')</script>";
	}
	if(isset($_POST['no'])){
	
	echo "<script>alert('oh! do not joke again!')</script>";
	echo "<script>window.open('my_account.php','_self')</script>";
	
	}
	


?>