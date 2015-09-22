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
				echo $user = $_SESSION['customer_email'];
				
				$get_img = "select * from customers where customer_email='$user'";
				
				$run_img = mysqli_query($con, $get_img); 
				
				$row_img = mysqli_fetch_array($run_img); 
				
				$c_image = $row_img['customer_image'];
				
				$c_name = $row_img['customer_name'];
				
				echo "<p style='text-align:center;'><img src='customer_images/$c_image' width='150' height='150'/></p>";
				
				?>
<li><b><a href="myprofile.php"><font color="#FFFF00" size="1">My Profile</font></a><font color="#FFFF00" size="1"> | </font><a href="logon_success.php"><font color="#FFFF00" size="1">Main Menu</font></a></b></li>
<li><a href="logout.php">Logout</a></li>
<!--<li><a href="my_orders.php?my_orders">My Orders</a></li>-->
<li><a href="all_rfq.php">My RFQ</a></li>
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
					echo "<b>Welcome:</b>" . $_SESSION['customer_email'] ; echo" | All RFQ Product View";					
					}
					?>
    </span> </div>
  <div id="products_box">
    <?php 
				if(!isset($_GET['my_orders'])){
					if(!isset($_GET['edit_account'])){
						if(!isset($_GET['change_pass'])){
							if(!isset($_GET['delete_account'])){
							
				//echo "
				//<h2 style='padding:20px;'>Welcome4:  $c_name </h2>	";
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
					if($abc){	  
						$order_id = $_POST['order_id'];
						$sel_del = "DELETE FROM orders WHERE order_id='".$order_id."'";
						$run_del = mysqli_query($con, $sel_del);
					}
					
				}
				
				?>
                
                <table class="order_table" border="1">
                	<tr>
                    <th>Cart id </th>
                    	<th>Customer id </th>
                        <th>Product</th>
                        <th>Image</th>
                         <th>Quantity</th>
                         
                        <th>Action</th>
                    </tr>
                    <?php 
					include("includes/db.php");
				 $cid = $_SESSION['c_id'];
		if(isset($_POST['cart'])){
		    $pro_id	=	$_GET['prod_id'];
			$ip = getIp(); 
			$date=	date("Y-m-d");
			 $q="INSERT INTO `cart`(`c_id`,`p_id`,`ip_add`,`qty`)
					VALUES ('$cid','$pro_id','$ip','1')";
					
			if( mysqli_query($con,$q)!=0)
			{
				echo "Add  product";
			}
			
		}
						$sel_c = "select * from cart where c_id = $cid ";
						$run_c = mysqli_query($con, $sel_c);
						while($row_data = mysqli_fetch_array($run_c))
						 { 
				   ?>
                          <tr>
                           <td><?php echo $row_data['cart_id']; ?></td>
                               <td><?php echo $row_data['c_id']; ?></td>
                               <td>
							   		<?php 
							   			 $product_id = $row_data['p_id'];
								$sel_p = "select product_id,product_title,product_price,product_image from products where product_id='".$product_id."'";
										$run_p = mysqli_query($con, $sel_p);
										$product = mysqli_fetch_assoc($run_p);
										$pro_image= $product['product_image'];
										echo $product['product_title'];
									?>
                               </td>
                                <td>
                                <img src='../admin_area/product_images/<?php echo $pro_image ?>' width='80' height='60'/>
                                </td>
                                <td>
                                <form method="post" action="rfq_update.php?cartid=<?php echo $row_data['cart_id']; ?>" enctype="multipart/form-data">
                                <input name="cartid" type="hidden" value="<?php echo $row_data['cart_id']; ?>">
								<input name="qty" value="<?php echo $row_data['qty']; ?>"   type="number" min=1>
                         
                                </td>
                             
                               <td>
<input type="submit" name="delete" value="update"/>
</form>
<form action="rfq_delt.php?cartid=<?php echo $row_data['cart_id']; ?>" method="post">
<input name="cartid" type="hidden" value="<?php echo $row_data['cart_id']; ?>">
<input type="hidden" name="Check out" value="<?php echo $row_data['c_id']; ?>">
<input type="submit" name="delete" value="Delete"/>
</form>
<form action='all_products.php' method='post'>
<input type='submit' value='Add Product' name='vfav'>
</form>

      <form action='view_favorites.php?pro_id=<?php echo $row_data['p_id']?>' method='post'>
		<input type='submit' value='Add to favorites' name='vfav'>
		</form>
         
                    </td>
                           </tr>
                           <?php 
						}
					?>
                          
                    
                </table>
                 <center>
                
                <form action="order.php?c_id=<?php  echo $cid; ?>" method="post">
                                    	<input type="hidden" name="Check out" value="<?php echo $row_data['c_id']; ?>">
                                        <input type="submit" name="Order" value="Submit to RFQ"/>
                                         
                               		</form></center>
					
                
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