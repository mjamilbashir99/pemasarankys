<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php 
session_start();
 include("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../index.php','_self')</script>";

 }

?>

<title>Pemasaran KYS</title>
<link rel="stylesheet" href="styles/style.css" media="all" />
</head>
<body>
<!--Main Container starts here-->
<div class="main_wrapper" style="background:#FFF">
<!--Header starts here-->
<div class="header_wrapper">
 <a href="../index.php"><img id="logo" src="../images/logo.gif" /> </a>
  <img id="banner" src="../images/ad_banner.gif" />
  </div>

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
            </ul>
</div>
<div id="content_area">
    <div id="shopping_cart">
                  <table border="0" width="" height="0">
						<tr>
                        <span style="float:left; font-size:15px; font-family:arial; padding:5px; line-height:30px;">
							<?php 
								if(isset($_SESSION['customer_email']))
								{
								echo "<b>Welcome1:</b>" . $_SESSION['customer_email'] ;  echo ' || Receive Quotations';
								}
                            ?>
                           </span>
							<td height="1" width="-698"></td>
						</tr>
					</table>
  </div>
  

  <div id="products_box">
    <table width="600" align="left"  bgcolor="pink" >
      <tr align="center" bgcolor="skyblue">
        <td>No</td>
        <td>Product</td>
        <td>Quantity</td>
        <td>Unit Price</td>
         <td>Price</td>
       
      </tr>
      <?php 
	include("includes/db.php");
	
	$get_pro = "SELECT o.*,od.*
		FROM orders as o
		JOIN order_details as od
		on o.order_id=od.order_no
		where o.status_order='received_quotations'";
	
	$run_pro = mysqli_query($con, $get_pro); 
	
	$i = 0;
	
	while ($row_pro=mysqli_fetch_array($run_pro)){
		//var_dump($row_pro);
		$order_id =$row_pro['order_id'];
        $pro_id    = $row_pro['p_id'];
		$qty = $row_pro['qty'];
		$p_price = $row_pro['p_price'];
		$price = $p_price*$qty;
		$i++;
	
	?>
      <tr align="center">
        <td><?php echo $i;?></td>
        <td><?php echo $pro_id;?> </td>
        <td><?php echo $qty;?> </td>
        <td><?php echo $p_price?></td>
        <td><?php  echo $price ?></td>
       
      </tr>
      <?php } ?>
       
    </table>
    </div></br>
    <center>
   
    <a href="cancel_quotation.php?order_id=<?php echo $order_id ?>"><input type="button" value="Cancel"></a>  <a href="issue_po.php?order_id=<?php echo $order_id ?>"><input type="button" value="Issue PO"> </a>
  </center>
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