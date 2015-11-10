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
    
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
 <script>
 $(document).ready(function(){
 $('.small_images').click(function(){
 // $("#image_container").fadeOut();
  var src = $(this).attr('src');
  $("#image_container").attr('src',src);
 $("#image_container").animate(1500 );
});
});
 
</script>
<style>
.small_images{ cursor:pointer}
</style>
    
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
		$gallery_image1 =$row_pro['gallery_image1'];
		$gallery_image2 =$row_pro['gallery_image2'];
		$gallery_image3 =$row_pro['gallery_image3'];
		$gallery_image4 =$row_pro['gallery_image4'];
		$gallery_image5 =$row_pro['gallery_image5'];
		
		
		
		?>
      			<div id='single_product'>
				
					<h3><?php echo $pro_title?></h3>
					<?php if($pro_image!=''){?>
					<img src='../admin_area/product_images/<?php echo $pro_image?>' width='445' height='300' id='image_container'/>
                    <?php }?>
					</br>
					</br>
	
			<?php if($gallery_image1!=''){?>			
				<img src='../admin_area/product_images/<?php echo $gallery_image1?>' width='80' height='100' class='small_images'/>&nbsp;
            	<?php }?>
				<?php if($gallery_image2!=''){?>			
				<img src='../admin_area/product_images/<?php echo $gallery_image2?>' width='80' height='100' class='small_images'/>&nbsp;
           	    <?php }?>
            	<?php if($gallery_image3!=''){?>			
				<img src='../admin_area/product_images/<?php echo $gallery_image3?>' width='80' height='100' class='small_images'/>&nbsp;
            	<?php }?>
            	<?php if($gallery_image4!=''){?>			
				<img src='../admin_area/product_images/<?php echo $gallery_image4?>' width='80' height='100' class='small_images'/>&nbsp;
            	<?php }?>
            	<?php if($gallery_image5!=''){?>			
				<img src='../admin_area/product_images/<?php echo $gallery_image5?>' width='80' height='100' class='small_images'/>&nbsp;
            	<?php }?>
		    	<p><?php echo $pro_desc ?></p>
					<a href='index.php' style='float:left;'>Go Back</a>
					<a href='login.php'><button style='float:right'>Login</button></a>
				</div>
				<?php	}
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