<!DOCTYPE>
<?php 
session_start();
if($_SESSION['customer_email']  == "")
header("location:../index.php");
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
				
				$row_img = mysqli_fetch_array($run_img); 
				
				$c_image = $row_img['customer_image'];
				
				$c_name = $row_img['customer_name'];
				
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
&nbsp;
<ul>
</div>
<div id="content_area">
  <div id="shopping_cart"> </div>
  <div id="products_box">
    <table width="760" bgcolor="pink" >
      <tr align="center" bgcolor="skyblue">
        <td>No</td>
        <td>Product</td>
        <td>Quantity</td>
        <td>Date</td>
         <td>Paymethod</td>
        <td>Action</td>
      </tr>
      <?php 
	include("includes/db.php");
	
	$get_pro = "select * from products";
	
	$run_pro = mysqli_query($con, $get_pro); 
	
	$i = 0;
	
	while ($row_pro=mysqli_fetch_array($run_pro)){
		
        $pro_id    = $row_pro['product_id'];
		$pro_title = $row_pro['product_title'];
		$pro_image = $row_pro['product_image'];
		$pro_price = $row_pro['product_price'];
		$i++;
	
	?>
      <tr align="center">
        <td><?php echo $pro_id;?></td>
        <td><?php echo $pro_title;?> <br/>
          <img src="product_images/<?php echo $pro_image;?>" width="60" height="60"/> 
         
          <hr/></td>
        <td><input /></td>
        <td><? echo date("Y-m-d ");?></td>
        <td><input /></td>
        <td><a href="paypal.com">paypal</a></td>
        <td><input type="checkbox"/></td>
      </tr>
      <?php } ?>
    </table>
    <table align="right" bgcolor="#CCCCCC">
      <tr>
        <td width="100%"><a href="#">Confirmed </a> | <a href="#">Re Request </a>| <a href="#">Remove </a></td>
      </tr>
    </table>
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