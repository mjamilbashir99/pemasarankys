<!DOCTYPE>
<?php 
session_start();
 include("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../index.php','_self')</script>";

 }

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
<div class="header_wrapper" style="width: 1000px; height: 84px"> <a href="../index.php"><img id="logo" src="../images/logo.gif" /> </a> <img id="banner" src="../images/ad_banner.gif" /></div>
<p>
  <!--Header ends here-->
</p>
<div id="sidebar">
    <ul id="cats">
		<?php 
            $user = $_SESSION['customer_email'];
            
            $get_img = "select * from customers where customer_email='$user'";
            
            $run_img = mysqli_query($con, $get_img); 
            
            $row_img  = mysqli_fetch_array($run_img); 
            $c_image  = $row_img['customer_image'];
           // $c_email   =$row_img['c_email'];
            $c_name = $row_img['customer_name'];
			$Ind_OR_Company = $row_img['Ind_OR_Company'];
			$customer_contact1 = $row_img['customer_contact1'];
            
            echo "<p style='text-align:center;'><img src='customer_images/$c_image' width='150' height='150'/></p>";
            
        ?>
        <li><b><a href="myprofile.php"><font color="#FFFF00" size="1">My Profile</font></a><font color="#FFFF00" size="1"> | </font><a href="logon_success.php"><font color="#FFFF00" size="1">Main Menu</font></a></b></li>
        <li><a href="my_account.php">My Account</a></li>
        <li><a href="my_account.php?edit_account">Edit Account</a></li>
        <li><a href="my_account.php?change_pass">Change Password</a></li>
        <li><a href="my_account.php?delete_account">Delete Account</a></li>
        <li><a href="sentfb.php">Send Feedback</a></li>
        <li><a href="logout.php">Logout</a></li>
        </li>
    <ul>
</div>
<div id="content_area">
  <?php cart(); ?>
  <div id="shopping_cart">
    <table border="0" width="-698" height="0">
      <tr><span style="float:left; font-size:15px; font-family:arial; padding:5px; line-height:30px;"></span> 
        <?php 
			if(isset($_SESSION['customer_email'])){
				echo "<b>Welcome1:</b>" . $_SESSION['customer_email'] ;
			}
		?>
        <td height="1" width="-698"></td>
      </tr>
    </table>
    </div>
<?php 
	if(isset($_POST['feedback'])){
		 $cid = $_SESSION['c_id'];
		 $fname			=$_POST['fname'];
		 $C_ID			=$_POST['C_ID'];
		 $E_address		=$_POST['E_address'];
		 $phoneNumber	=$_POST['phoneNumber'];
		 $subject		=$_POST['subject'];
		 $fb			=$_POST['fb'];
		 /*echo "INSERT INTO feedback (fname, companyid, Email_address, telephone_number, subject, feedback) 
		 VALUES ('".$fname."','".$C_ID."','".$E_address."','".$phoneNumber."','".$subject."','".$fb."')";exit;*/
		 $q="INSERT INTO feedback (c_id, fname, companyid, Email_address, telephone_number, subject, feedback) 
		 VALUES ('".$cid."', '".$fname."','".$C_ID."','".$E_address."','".$phoneNumber."','".$subject."','".$fb."')";
		 if(mysqli_query($con, $q)){
			$to=$_SESSION['customer_email'];
				$subject = "Pemasaran KYS Your Password";
				$message = "
		
						<html> 
						<body> 
								
								<p>Your Name: $fname</p>
								<p>Your Company: $C_ID</p>
								<p>Your Email Address: $E_address</p>
								<p>Your Phone Number: $phoneNumber</p>
								<p>Your Feed Back: $fb</p>
								<p>Yours sincerely,</p> 
								<p>Pemasaran KYS Team</p> 
						</body> 
						</html> 
						"; 
						// Always set content-type when sending HTML email
		
						$headers = "MIME-Version: 1.0" . "\r\n"; 
						$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n"; 
						// More headers 
						$headers .= 'From:Pemasaran KYS <admin@pemasarankys.my>' . "\r\n"; 
		 
						mail($to,$subject,$message,$headers);
						//$_REQUEST['msg']="Mail Sent";	 
		
			echo "<script>alert('You mail sent successfully, Thanks!')</script>";
		
		 }	
		 else 
		 {
			echo "email not sent"; 
		 }
	}
?>
  <div id="products_box">
    <form method="POST" action="sentfb.php">
      <h2 style='padding:20px;'>Welcome: </h2>
      <table border="2" style="padding:4%">
        <tr>
          <td> Name: </td>
          <td><input  type="text" value="<?php echo $c_name  ?>" name="fname" /></td>
        </tr>
        <tr>
          <td> Company_Id </td>
          <td><input type="text" name="C_ID" value="<?php echo $Ind_OR_Company ?>"/></td>
        </tr>
        <tr>
          <td> Email Address </td>
          <td><input   type="text" name="E_address" value="<?php echo $_SESSION['customer_email']?>"/></td>
        </tr>
        <tr>
          <td> TelePhone Number </td>
          <td><input name="phoneNumber" value="<?php echo $customer_contact1 ?>"/></td>
        </tr>
        <tr>
          <td> subject </td>
          <td><input  type="text" name="subject"/></td>
        </tr>
        <tr>
          <td> FeedBack </td>
          <td><textarea style="width:100%; height:200%" name="fb"> </textarea></td>
        </tr>
      </table>
      <br/>
      <br/>
      <div align="center" style="border:#999">
        <input type="submit" value="Send" name="feedback">
      </div>
    </form>
  </div>
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