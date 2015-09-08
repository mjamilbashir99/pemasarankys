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
          <td align="right"><b>Email:</b></td>
          <td><input type="text" name="email" placeholder="enter email" required/></td>
        </tr>
        <tr>
          <td align="right"><b>Password:</b></td>
          <td><input type="password" name="pass" placeholder="enter password" required/></td>
        </tr>
        <tr align="center">
          <td colspan="3"><input type="submit" name="login" value="Login" /></td>
        </tr>
        <tr align="center">
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
    </div>
    <h2 style="float:right; padding-right:20px;">&nbsp;</h2>
  </form>
  <?php 
	if(isset($_POST['login'])){
	
		$c_email = $_POST['email'];
		$c_pass = $_POST['pass'];
		
	    $sel_c = "select * from customers where customer_pass='$c_pass' AND customer_email='$c_email'";
		
		$run_c = mysqli_query($con, $sel_c);
		
		$check_customer = mysqli_num_rows($run_c); 
		$result = mysqli_fetch_assoc($run_c);
		$c_id =  $result['customer_id'];
		
		if($check_customer<=0){
		
		echo "<script>alert('Password or email is incorrect, plz try again!')</script>";
		exit();
		}
		$ip = getIp(); 
	
	
	    $sel_cart = "select * from cart where ip_add='$ip'";
		
		$run_cart = mysqli_query($con, $sel_cart); 
		
		$check_cart = mysqli_num_rows($run_cart); 
		
		//if($check_customer!="" AND $check_cart==0){
		
		$_SESSION['customer_email']  = $c_email;
		 $_SESSION['c_id']           = $c_id;
		
		echo "<script>alert('You logged in successfully, Thanks!')</script>";
		echo "<script>window.open('customer/logon_success.php','_self')</script>";
		header("location:customer/logon_success.php");

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
    <h2 style="text-align:center; padding-top:30px;"> <span style="font-weight: 400"><font size="1" face="Arial">&copy; 2015 by 
      Pemasarankys</font></span></h2>
  </div>
  </div>
  <!--Main Container ends here-->
</body>
</html>