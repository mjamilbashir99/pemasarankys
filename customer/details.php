<!DOCTYPE>
<?php 
session_start();
 include("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../details.php','_self')</script>";

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
		<div class="header_wrapper" style="width: 1000px; height: 84px">
		
			<a href="../index.php"><img id="logo" src="../images/logo.gif" /> </a>
			<img id="banner" src="../images/ad_banner.gif" /></div>
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
<li><b><a href="myprofile.php"><font color="#FFFF00" size="1">My Profile</font></a><font color="#FFFF00" size="1"> 
| </font><a href="logon_success.php"><font color="#FFFF00" size="1">Main Menu</font></a></b></li>
<li><a href="logout.php">Logout</a></li>
<li><a href="my_orders.php?my_orders">My Orders</a></li>
<li><a href="all_products.php">All Products</a></li>
<br>
<div id="sidebar_title">Categories</div>
				
				
				
				<?php getCats(); ?>
				
				</ul>
			
			
			</div>
		
			<div id="content_area">
			
			<div id="shopping_cart"> 
					
					<span style="float:right; font-size:18px; padding:5px; line-height:40px;">
					
						  <span style=" text-align:center; font-size:15px; font-family:arial; padding:5px; line-height:30px;">
						<?php 
					if(isset($_SESSION['customer_email'])){
					echo "<b>Welcome1:</b>" . $_SESSION['customer_email'] ;  echo "| View Detail product";
					
					}
					?>
					
					
					</span>
			</div>
			
				<div id="products_box">
	<?php 
	if(isset($_GET['pro_id'])){
	
	$product_id = $_GET['pro_id'];
	
	$get_pro = "select * from products where product_id='$product_id'";

	$run_pro = mysqli_query($con, $get_pro); 
	
	while($row_pro=mysqli_fetch_array($run_pro)){
	
		$pro_id = $row_pro['product_id'];
		$pro_title = $row_pro['product_title'];
		$pro_image = $row_pro['product_image'];
		$pro_desc = $row_pro['product_desc'];
		$gallery1 =$row_pro['gallery_image1'];
		$gallery2 =$row_pro['gallery_image2'];
		$gallery3 =$row_pro['gallery_image3'];
		$gallery4 =$row_pro['gallery_image4'];
		$gallery5 =$row_pro['gallery_image5'];
	
		echo "
				<div id='single_product'>
				
					<h3>$pro_title</h3>
					
					<img src='../admin_area/product_images/$pro_image' width='400' height='300' />
					</br>
				<img src='../admin_area/product_images/$gallery1' width='80' height='100'/>&nbsp;
				<img src='../admin_area/product_images/$gallery2' width='80' height='100'/>&nbsp;
				<img src='../admin_area/product_images/$gallery3' width='80' height='100'/>&nbsp;
				<img src='../admin_area/product_images/$gallery4' width='80' height='100'/>&nbsp;
				<img src='../admin_area/product_images/$gallery5' width='80' height='100'/>&nbsp;
		    	<p>$pro_desc </p>
					<a href='all_products.php' style='float:left;'>Go Back</a>
					
					<a href='all_rfq.php?prod_id=$pro_id'><button style='float:right'>Add to RFQ</button></a>
				</div>
				";
	
	}
	}
?>
				
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