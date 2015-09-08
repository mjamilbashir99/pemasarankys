<!DOCTYPE>
<?php 
session_start();
include("functions/functions.php");
include("includes/db.php");

?>
<html>
<head>
<title>Pemasaran KYS</title>
<link rel="stylesheet" href="styles/style.css" media="all" />
</head>
<body>
<!--Main Container starts here-->
<div class="main_wrapper">
<!--Header starts here-->
<div class="header_wrapper"> <a href="index.php"><img id="logo" src="images/logo.gif" /> </a> <img id="banner" src="images/ad_banner.gif" /> </div>
<!--Header ends here-->
<!--Navigation Bar starts-->
<div class="menubar">
  <ul id="menu">
    <li><a href="index.php">Home</a></li>
    <li><a href="aboutus.php">About Us</a></li>
    <li><a href="contact.php">Contact Us</a></li>
    <li><a href="login.php">Login</a></li>
  </ul>
  <div id="form">
    <form method="get" action="results.php" enctype="multipart/form-data">
      <input type="text" name="user_query" placeholder="Search a Product"/ >
      <input type="submit" name="search" value="Search" />
    </form>
  </div>
</div>
<!--Navigation Bar ends-->
<!--Content wrapper starts-->
<div class="content_wrapper">
<div id="sidebar">
<ul id="cats">
<div id="sidebar_title">Login</div>
<ul id="cats">
<ul>
<li><a href="forgotpass.php">Forget Password</a></li>
<li><a href="newregister.php">New Registration</a></li>
<ul>
<ul>
</div>
<div id="content_area"> </div>
</div>
</div>
<!--Content wrapper ends-->
<td colspan="3"><form method="post" action="">
    <div align="center">
      <table width="500" bgcolor="#FFFFFF" id="table1">
        <tr align="center">
          <td colspan="2"><h2>&nbsp;</h2></td>
        </tr>
        <tr>
          <td align="right"><font face="Arial"><b> <span style="font-size: 11pt">Email:</span></b></font></td>
          <td><input type="text" name="email" placeholder="enter email" required size="22"/></td>
        </tr>
        <tr align="center">
          <td colspan="2"><input type="submit" name="forgot" value="Go" /></td>
        </tr>
        <tr align="center">
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
    </div>
    <h2 style="float:right; padding-right:20px;">&nbsp;</h2>
  </form>
  <?php 
	if(isset($_POST['forgot']))
	{
	
		$c_email = $_POST['email'];
		
		$sel_c = "select customer_email,customer_pass from customers where customer_email='$c_email'";
		
		$run_c = mysqli_query($con, $sel_c);
		$check_email = mysqli_num_rows($run_c);
		$result = mysqli_fetch_assoc($run_c); 
		$password =  $result['customer_pass'];
		$email =  $result['customer_email']; 
		if($check_email==0){
			echo "<script>alert('Your email not found in our database, plz try again!')</script>";
			exit();
		}
		
		$to=$email;
				$subject = "Pemasaran KYS Your Password";
				$message = "
		
						<html> 
						<body> 
								
								<p>Your password is: $password</p>
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
						//$_REQUEST['msg']="Mail Sent";	 
		
		echo "<script>alert('You mail sent successfully, Thanks!')</script>";
		
		
		//}
		
	}
	
	
	?>
  <p>&nbsp;</p>
  <p>&nbsp;
    </div>
  <div id="products_box"> </div>
  </div>
  </div>
  <!--Content wrapper ends-->
  <div id="footer">
    <h2 style="text-align:center; padding-top:30px;"> <span style="font-weight: 400"><font size="1" face="Arial">&copy; 2015 by www.sundar.com</font></span></h2>
  </div>
  </div>
  <!--Main Container ends here-->
</body>
</html>