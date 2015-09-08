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
<li><a href="logout.php">Logout</a></li>
<li><a href="my_orders.php?my_orders">My Orders</a></li>
<li><a href="all_products.php">All Products</a></li>
<ul>
</div>
<div id="content_area">
  <?php cart(); ?>
  <div id="shopping_cart"> <span style="float:left; font-size:17px; padding:5px; line-height:40px;">
    <table border="1" width="-698" height="1">
      <tr>
        <td height="1" width="-698"></td>
      </tr>
    </table>
    <?php 
					if(isset($_SESSION['customer_email'])){
					echo "<b>Welcome3:</b>" . $_SESSION['customer_email'] ;
					
					}
					?>
    </span> </div>
  <div id="products_box">
    <?php 
				if(!isset($_GET['my_orders'])){
					if(!isset($_GET['edit_account'])){
						if(!isset($_GET['change_pass'])){
							if(!isset($_GET['delete_account'])){
							
				echo "
				<h2 style='padding:20px;'>Welcome4:  $c_name </h2>	";
				}
				}
				}
				}
				?>
    <?php 
				if(isset($_GET['edit_account'])){
				include("edit_account.php");
				}
				if(isset($_GET['change_pass'])){
				include("change_pass.php");
				}
				if(isset($_GET['delete_account'])){
				include("delete_account.php");
				}
				if(isset($_POST['del'])){
					{	  
						$order_id = $_POST['order_id'];
						$sel_del = "DELETE FROM orders WHERE order_id='".$order_id."'";
						$run_del = mysqli_query($con, $sel_del);
					}
					
				}
				
				?>
                
                <table class="order_table" border="1">
                	<tr>
                    	<th>NO</th>
                        <th>Product</th>
                        <th>Completed Date</th>
                         <th>Quantity</th>
                        <th>Status</th>
                        <th>Delete</th>
                    </tr>
                    <?php 
						 $cid = $_SESSION['c_id'];
						$sel_c = "select * from orders where c_id='".$cid."'";
						$run_c = mysqli_query($con, $sel_c);
						while($row_data = mysqli_fetch_array($run_c))
						 { 
				   ?>
                          <tr>
                               <td><?php echo $row_data['order_id']; ?></td>
                               <td>
							   		<?php 
							   			 $product_id = $row_data['p_id'];
										$sel_p = "select product_title from products where product_id='".$product_id."'";
										$run_p = mysqli_query($con, $sel_p);
										$product = mysqli_fetch_assoc($run_p);
										echo $product['product_title'];
										
									?>
                               </td>
                               <td><?php echo $row_data['order_date']; ?></td>
                                <td><?php echo $row_data['qty']; ?></td>
                               <td>
							   		<?php 
							   			$status =  $row_data['status_order']; 
										if($status == 'Completed'){
											echo $status;
										}elseif($status == 'in progress'){
											echo 'in Progress';
										}
										
								   ?>
                               </td>
                               <td>
                               		<form action="" method="post">
                                    	<input type="hidden" name="order_id" value="<?php echo $row_data['order_id']; ?>">
                                        <input type="submit" name="del" value="Delete"/>
                               		</form>
                               </td>
                           </tr>
					<?php 
						}
					?>
                    
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