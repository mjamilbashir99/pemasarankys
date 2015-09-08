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
		
			<div id="content_area">
			
			
			
			

				
				</div>
			
			</div>
		</div>
		<!--Content wrapper ends-->
		<?
		
			if(isset($_POST['getpass']))
{ 
 mysql_connect('localhost','root','') or die(mysql_error());
 mysql_select_db('pemasmy1_rootdb') or die(mysql_error());
 
 $mail=$_POST['email0'];
 $q=mysql_query("select * from customers where customer_email='".$mail."' ") or die(mysql_error());
 $p=mysql_affected_rows();
 if($p!=0) 
 {
  $res=mysql_fetch_array($q);
  $to=$res['customer_email'];
  $subject='Remind password';
  $message='Your password : '.$res['customer_pass']; 
  $headers='Admin@www.pemasarankys.com';
  $m=mail($to,$subject,$message,$headers);
  if($m)
  {
    echo'Check your inbox in mail';
  }
  else
  {
   echo'mail is not send';
  }
 }
 else
 {
  echo'You entered mail id is not present';
 }
}
?>
					
				
				

					
					<td colspan="3"> 
	
	<form action="forgotpass.php" method="POST"> 
		<div align="center">
		<table width="500" bgcolor="#FFFFFF" id="table1"> 
			
			<tr align="center">
				<td colspan="2"><h2>&nbsp;</h2></td>
			</tr>
			
			<tr>
				<td align="right"><font face="Arial"><b>
				<span style="font-size: 11pt">Email:</span></b></font></td>
				<td>
				<input type="text" name="email0" placeholder="enter email" required size="22"/></td>
			</tr>
			
			<tr align="center">
				<td colspan="2">
				<input type="submit" name="getpass" value="Go" /></td>
			</tr>
			
			<tr align="center">
				<td colspan="2">&nbsp;
				</td>
			</tr>
		</table> 
			</div>
			<h2 style="float:right; padding-right:20px;">&nbsp;</h2>
	</form>
	
	
					<p>&nbsp;</p>
					<p>&nbsp;</div>
			
				<div id="products_box">
				
			
				
				</div>
			
			</div>
		</div>
		<!--Content wrapper ends-->
		
		
		
		<div id="footer">
		
		<h2 style="text-align:center; padding-top:30px;">
		<span style="font-weight: 400"><font size="1" face="Arial">&copy; 2015 by www.sundar.com</font></span></h2>
		
		</div>
	
	
	
	
	
	
	</div> 
<!--Main Container ends here-->


</body>
</html>