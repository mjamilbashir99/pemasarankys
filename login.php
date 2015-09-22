<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php 
session_start();
include("includes/db.php");
?>
 <?php 
	if(isset($_POST['login'])){
		$c_email = $_POST['email'];
		$c_pass = $_POST['pass'];
	    $sel_c = "select * from customers where customer_pass='$c_pass' and customer_email='$c_email' and status = 1";
		$run_c = mysqli_query($con, $sel_c);
		$check_customer = mysqli_num_rows($run_c);
		if($check_customer<=0)
		{
			$msg="your account is deactive";
			header("Location: login.php?msg=$msg");
		
          
		} else{
		$result = mysqli_fetch_assoc($run_c);
		$c_id =  $result['customer_id'];
		$c_email =  $result['customer_email'];
		
		  $_SESSION['customer_email']  = $c_email;
		  $_SESSION['c_id']            = $c_id;
		  header("location: customer/logon_success.php");
	}
	}
	?>
<head>
<title>Pemasaran KYS</title>
<link rel="stylesheet" href="styles/style.css" media="all" />
</head>
<body>
<!--Main Container starts here-->
<div class="main_wrapper">
<!--Header starts here-->
<div class="header_wrapper"> 
<a href="index.php"><img id="logo" src="images/logo.gif" /> </a>
<img id="banner" src="images/ad_banner.gif" />
</div>
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
    <form method="post" action="results.php" enctype="multipart/form-data">
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
<li><div id="sidebar_title">Login</div></li>
<li><a href="forgotpass.php">Forget Password</a></li>
<li><a href="newregister.php">New Registration</a></li>
</ul>
</div>
<!--Content wrapper ends-->
<?php echo $_GET['msg']; ?>
<div id="content_area">
<form method="post" action="">
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