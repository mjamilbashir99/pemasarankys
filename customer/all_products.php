<!DOCTYPE>
<?php 
session_start();
if($_SESSION['customer_email']  == "")
header("location:../index.php");
include("functions/functions.php");
//echo $addcat = $_GET['add_cart'];
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
<li><a href="all_cart.php">My Cart</a></li>
<li><a href="all_products.php">All Products</a></li>
<br>

<div id="sidebar_title">Categories</div>
<ul id="cats">
				
				<?php getCats(); ?>
				</ul>
				
					</ul>
				
				</div>
					
		
			<div id="content_area">
			
			<?php// cart(); ?>
			
			<div id="shopping_cart"> 
					
					
					
					<table border="0" width="-698" height="0">
						<tr>
                        <span style="float:left; font-size:15px; font-family:arial; padding:5px; line-height:30px;">
						<?php 
					if(isset($_SESSION['customer_email'])){
					echo "<b>Welcome1:</b>" . $_SESSION['customer_email'] ;  echo "| View All Products";
					
					}
					?>
							<td height="1" width="-698"></td>
                            </span>
						</tr>
					</table>
					
					

					
			</div>
			
			
			
				<div id="products_box">
				
				<?php getPro(); ?>
				<?php getCatPro(); ?>

			
				
				</div>
			

			
				<div id="products_box">
				
				
				
				
				
								
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