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
                    $cid = $_SESSION['c_id'];
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
      <ul>
</div>
<div id="content_area">
  <?php cart(); ?>
  <div id="shopping_cart">
    <table border="0" width="-698" height="0">
      <tr><span style="float:left; font-size:15px; font-family:arial; padding:5px; line-height:30px;"> </span>
        <?php 
					if(isset($_SESSION['customer_email'])){
					echo "<b>Welcome1:</b>" . $_SESSION['customer_email'] ; echo "| View Tell to Friend";
					
					}
					?>
                   
        <td height="1" width="-698"></td>
     </tr>
    </table>
     </div>
  <div id="products_box">
    <?php if(isset($_POST['tell_frnd']))
				
				
				{
					//echo 'eqweqe'; 
					
					    $name=$_POST['name'];
						$email=$_POST['email'];	
				if($name != '' || $email != ''){
					$pro_id=$_GET['pro_id'];
					$user=$_SESSION['customer_email']; 
					$to=$email;
								$subject = "Pemasaran KYS Your Friend want to show this product";
								$message = "
						
										<html> 
										<body> 
												
												<p>Your Friend Name:  $c_name</p>
												<p>Your Email id:   $user    </p>
												<p>http://www.pemasarankys.my/all_product.php?pro_id=$pro_id</p> 
											    <p>Pemasaran KYS Team</p> 
										</body> 
										</html> 
										"; 
										// Always set content-type when sending HTML email
						
										$headers = "MIME-Version: 1.0" . "\r\n"; 
										$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n"; 
										// More headers 
										$headers .= 'From:Pemasaran KYS <info@Pemasaran.KYS.com>' . "\r\n"; 
						 
										$m = mail($to,$subject,$message,$headers);
										//$_REQUEST['msg']="Mail Sent";	 
						if($m){
							echo "<script>alert('You mail sent successfully, Thanks!')</script>";
						}else{
							echo "<script>alert('You mail Notsent successfully, Thanks!')</script>";
						}
						
					}					
					
					
					}?>
    <table width="760" class="order_table" bgcolor="pink" >
      <tr align="center" bgcolor="skyblue">
        <td> Product_id: </td>
        <td> Product </td>
        <td> Name</td>
        <td> emailAdddress</td>
        <td> Action </td>
       
      </tr>
      <?php 
	include("includes/db.php");
	$pro_id=$_GET['pro_id'];
	$get_pro = "select * from products where product_id = $pro_id";
	
	$run_pro = mysqli_query($con, $get_pro); 
	
	$i = 0;
	
	while ($row_pro=mysqli_fetch_array($run_pro)){
		
        $pro_id = $row_pro['product_id'];
		$pro_title = $row_pro['product_title'];
		$pro_image = $row_pro['product_image'];
		//$pro_price = $row_pro['product_price'];
		$i++;
	
	?>
    
      <tr align="center">
        <td><?php echo $pro_id;?></td>
        <td><?php echo $pro_title;?> <br/>
          <img src="../admin_area/product_images/<?php echo $pro_image;?>" width="60" height="60"/> <br/>
          <?php //echo $pro_price;?>
          <hr/></td>
          <form method="post" action="">
        <td><input type="text" name="name"/></td>
        <td><input type="text" name="email"></td>
        <td><input type="submit" value="send" name="tell_frnd"/></td>
        </form>
      </tr>
      
      <?php } ?>
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