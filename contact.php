<!DOCTYPE>
<?php 
session_start();
include("functions/functions.php");

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
				
				<div id="sidebar_title">Contact Us</div>
				
			
			
			
			</div>
		


			<div id="content_area">
			
			<table width="101%" border="0" bgcolor="#FFFFFF" id="table9">
    <tr>
      <td width="93%" height="25" bordercolor="#CCCCCC" bgcolor="#FFFFFF" colspan="2">
		<font face="Arial" size="2">Online Contact Form</font></td>
      </tr>
    <tr> 
      <td width="93%" height="25" bordercolor="#CCCCCC" bgcolor="#FFFFFF" colspan="2">&nbsp;<form name="contactform" method="post" action="contact2.php">
 
<table width="450px">
 
<tr>
 
 <td valign="top">
 
  <font face="Arial">
 
  <label for="first_name"><font size="2">First Name *</font></label><font size="2">
	</font></font>
 
 </td>
 
 <td valign="top">
 
  <input  type="text" name="first_name" maxlength="50" size="30">
 
 </td>
 
</tr>
 
<tr>
 
 <td valign="top"">
 
  <font face="Arial">
 
  <label for="last_name"><font size="2">Last Name *</font></label><font size="2">
	</font></font>
 
 </td>
 
 <td valign="top">
 
  <input  type="text" name="last_name" maxlength="50" size="30">
 
 </td>
 
</tr>
 
<tr>
 
 <td valign="top">
 
  <font face="Arial">
 
  <label for="email"><font size="2">Email Address *</font></label><font size="2">
	</font></font>
 
 </td>
 
 <td valign="top">
 
  <input  type="text" name="email" maxlength="80" size="30">
 
 </td>
 
</tr>
 
<tr>
 
 <td valign="top">
 
  <font face="Arial">
 
  <label for="telephone"><font size="2">Telephone Number</font></label><font size="2">
	</font></font>
 
 </td>
 
 <td valign="top">
 
  <input  type="text" name="telephone" maxlength="30" size="30">
 
 </td>
 
</tr>
 
<tr>
 
 <td valign="top">
 
  <font face="Arial">
 
  <label for="comments"><font size="2">Comments *</font></label><font size="2">
	</font></font>
 
 </td>
 
 <td valign="top">
 
  <textarea  name="comments" maxlength="1000" cols="25" rows="6"></textarea>
 
 </td>
 
</tr>
 
<tr>
 
 <td colspan="2" style="text-align:center">
 
  <input type="submit" value="Submit">  
 
 </td>
 
</tr>
 
</table>
 
</form></td>
    </tr>
    <tr> 
      <td bordercolor="#CCCCCC" bgcolor="#FFFFFF">&nbsp;</td>
      <td bordercolor="#CCCCCC" bgcolor="#FFFFFF"> 
        &nbsp;</td>
    </tr>
    <tr> 
      <td colspan="2" bordercolor="#CCCCCC" bgcolor="#FFFFFF"> 
        &nbsp;</td>
    </tr>
  </table>

			
			
				
				</div>
			
			</div>
		</div>
		<!--Content wrapper ends-->
		
		
		
		
		<div id="footer">
		
		<h2 style="text-align:center; padding-top:30px;">
		<span style="font-weight: 400"><font size="1" face="Arial">&copy; 2015 by 
		Pemasarankys</font></span></h2>
		
		</div>
	
	
	
	
	
	
	</div> 
<!--Main Container ends here-->


</body>
</html>