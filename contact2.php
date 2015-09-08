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
			
			<form name="contactform" method="post" action="send_form_email.php">
 <?php
 
if(isset($_POST['email'])) {
 
     
 
    // EDIT THE 2 LINES BELOW AS REQUIRED
 
    $email_to = "admin@pemasarankys.my";
 
    $email_subject = "Online Contact Form";
 
     
 
     
 
    function died($error) {
 
        // your error code can go here
 
        echo "We are very sorry, but there were error(s) found with the form you submitted. ";
 
        echo "These errors appear below.<br /><br />";
 
        echo $error."<br /><br />";
 
        echo "Please go back and fix these errors.<br /><br />";
 
        die();
 
    }
 
     
 
    // validation expected data exists
 
    if(!isset($_POST['first_name']) ||
 
        !isset($_POST['last_name']) ||
 
        !isset($_POST['email']) ||
 
        !isset($_POST['telephone']) ||
 
        !isset($_POST['comments'])) {
 
        died('We are sorry, but there appears to be a problem with the form you submitted.');       
 
    }
 
     
 
    $first_name = $_POST['first_name']; // required
 
    $last_name = $_POST['last_name']; // required
 
    $email_from = $_POST['email']; // required
 
    $telephone = $_POST['telephone']; // not required
 
    $comments = $_POST['comments']; // required
 
     
 
    $error_message = "";
 
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
 
  if(!preg_match($email_exp,$email_from)) {
 
    $error_message .= 'The Email Address you entered does not appear to be valid.<br />';
 
  }
 
    $string_exp = "/^[A-Za-z .'-]+$/";
 
  if(!preg_match($string_exp,$first_name)) {
 
    $error_message .= 'The First Name you entered does not appear to be valid.<br />';
 
  }
 
  if(!preg_match($string_exp,$last_name)) {
 
    $error_message .= 'The Last Name you entered does not appear to be valid.<br />';
 
  }
 
  if(strlen($comments) < 2) {
 
    $error_message .= 'The Comments you entered do not appear to be valid.<br />';
 
  }
 
  if(strlen($error_message) > 0) {
 
    died($error_message);
 
  }
 
    $email_message = "Form details below.\n\n";
 
     
 
    function clean_string($string) {
 
      $bad = array("content-type","bcc:","to:","cc:","href");
 
      return str_replace($bad,"",$string);
 
    }
 
     
 
    $email_message .= "First Name: ".clean_string($first_name)."\n";
 
    $email_message .= "Last Name: ".clean_string($last_name)."\n";
 
    $email_message .= "Email: ".clean_string($email_from)."\n";
 
    $email_message .= "Telephone: ".clean_string($telephone)."\n";
 
    $email_message .= "Comments: ".clean_string($comments)."\n";
 
     
 
     
 
// create email headers
 
$headers = 'From: '.$email_from."\r\n".
 
'Reply-To: '.$email_from."\r\n" .
 
'X-Mailer: PHP/' . phpversion();
 
@mail($email_to, $email_subject, $email_message, $headers);  
 
?>
<table width="450px" id="table1">
 
<tr>
 
 <td valign="top">
 
  <font size="2" face="Arial">&nbsp;Thank you for contacting us. We will be in touch with you very soon.
 
 
 
<?php
 
}
 
?>
</font>
 
 </td>
 
</tr>
 
</table>
 
<table width="450px" id="table2">
 
<tr>
 
 <td valign="top">
 
  <font face="Arial" size="2">
 
  <label for="first_name">First Name *</label>
 
 </font>
 
 </td>
 
 <td valign="top" width="298">
 
  <font face="Arial">
 
  <input  type="text" name="first_name0" maxlength="50" size="30"><font size="2">
	</font></font>
 
 </td>
 
</tr>
 
</table>
 
	<table width="450px">
 
<tr>
 
 <td valign="top"">
 
  <font face="Arial" size="2">
 
  <label for="last_name">Last Name *</label>
 
 </font>
 
 </td>
 
 <td valign="top">
 
  <font face="Arial">
 
  <input  type="text" name="last_name" maxlength="50" size="30"><font size="2">
	</font></font>
 
 </td>
 
</tr>
 
<tr>
 
 <td valign="top">
 
  <font face="Arial" size="2">
 
  <label for="email">Email Address *</label>
 
 </font>
 
 </td>
 
 <td valign="top">
 
  <font face="Arial">
 
  <input  type="text" name="email" maxlength="80" size="30"><font size="2">
	</font></font>
 
 </td>
 
</tr>
 
<tr>
 
 <td valign="top">
 
  <font face="Arial" size="2">
 
  <label for="telephone">Telephone Number</label>
 
 </font>
 
 </td>
 
 <td valign="top">
 
  <font face="Arial">
 
  <input  type="text" name="telephone" maxlength="30" size="30"><font size="2">
	</font></font>
 
 </td>
 
</tr>
 
<tr>
 
 <td valign="top">
 
  <font face="Arial" size="2">
 
  <label for="comments">Comments *</label>
 
 </font>
 
 </td>
 
 <td valign="top">
 
  <font face="Arial">
 
  <textarea  name="comments" maxlength="1000" cols="25" rows="6"></textarea><font size="2">
	</font></font>
 
 </td>
 
</tr>
 
<tr>
 
 <td colspan="2" style="text-align:center">
 
  <input type="submit" value="Submit">   
 
 </td>
 
</tr>
 
</table>
 
</form>			
			
				
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