<!DOCTYPE>
<?php 
include("functions/functions.php");

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
			
				<div id="sidebar_title">Categories</div>
				
				<ul id="cats">
				
				<?php getCats(); ?>
				
				
			
			
			</div>
		
			<div id="content_area">
			
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
					<img src='admin_area/product_images/<?php echo $pro_image?>' width='445' height='300' id='image_container'/>
                    <?php }?>
					</br>
					</br>
					
			<?php if($gallery_image1!=''){?>			
			<img src='admin_area/product_images/<?php echo $gallery_image1?>' width='80' height='100' class='small_images'/>&nbsp;
            <?php }?>
			<?php if($gallery_image2!=''){?>			
			<img src='admin_area/product_images/<?php echo $gallery_image2?>' width='80' height='100' class='small_images'/>&nbsp;
            <?php }?>
            <?php if($gallery_image3!=''){?>			
			<img src='admin_area/product_images/<?php echo $gallery_image3?>' width='80' height='100' class='small_images'/>&nbsp;
            <?php }?>
            <?php if($gallery_image4!=''){?>			
			<img src='admin_area/product_images/<?php echo $gallery_image4?>' width='80' height='100' class='small_images'/>&nbsp;
            <?php }?>
            <?php if($gallery_image5!=''){?>			
			<img src='admin_area/product_images/<?php echo $gallery_image5?>' width='80' height='100' class='small_images'/>&nbsp;
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