<!DOCTYPE>
<?php 
include("frontfunctions.php");
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
		
			<a href="index.php"><img id="logo" src="images/logo.gif" /> </a>
			<img id="banner" src="images/ad_banner.gif" /></div>
		<p>
		<!--Header ends here-->
		
			
	
						</p>
		
			
	
						<div id="sidebar">
				
				
			
				

<div id="sidebar_title">Categories</div>
				
				<ul id="cats">
				
				<?php getCats(); ?>
				
				
			</ul>
			
			</div>
		
			<div id="content_area">
			
			<div id="shopping_cart"> 
					
					<span style="float:right; font-size:18px; padding:5px; line-height:40px;">
					
						
					
					
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
	 $gallery =$row_pro['gallery'];
	$img_product= (explode(",",$gallery));
		echo "
				<div id='single_product'>
				
					<h3>$pro_title</h3>
					
					<img src='../admin_area/product_images/$pro_image' width='400' height='300' />
					</br>
					<img src='../admin_area/product_images/$img_product[0]' width='80' height='100' />
					<img src='../admin_area/product_images/$img_product[1]' width='80' height='100' />
					<img src='../admin_area/product_images/$img_product[2]' width='80' height='100' />
					<img src='../admin_area/product_images/$img_product[3]' width='80' height='100' />
					<img src='../admin_area/product_images/$img_product[4]' width='80' height='100' />
					<p>$pro_desc </p>
					
					<a href='index.php' style='float:left;'>Go Back</a>
					
					<a href='login.php'><button style='float:right'>Login</button></a>
				
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