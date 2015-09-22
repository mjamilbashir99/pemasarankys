<?php 
session_start(); 

if(!isset($_SESSION['user_email'])){
	
	echo "<script>window.open('login.php')</script>";
}
else {

?>

<!DOCTYPE> 

<html>
	<head>
		<title>Pemasaran KYS - This is Admin Panel</title> 
		
	<link rel="stylesheet" href="styles/style.css" media="all" /> 
	</head>


<body> 

	<div class="main_wrapper">
	
	
		<div id="header"></div>
		
		<div id="right">
		<h2 style="text-align:center;">Manage Content</h2>
			
		
            <a href="index.php?insert_cat">Insert New Category</a>
			<a href="index.php?view_cats">View All Categories</a>
            <a href="index.php?insert_product">Insert New Product</a>
            <a href="index.php?view_products">View All Products</a>
            <a href="index.php?create_customers">Create Customers</a>
			<a href="index.php?view_customers">View Customers</a>
            <a href="index.php?delete_customer">Delete Customers </a>
            <a href="index.php?rfq">View RFQ</a>
			<!--<a href="index.php?view_orders">View Orders</a>-->
            <a href="index.php?view_po">View PO</a>
			<a href="index.php?view_payments">View Payments</a>
			<a href="logout.php">Admin Logout</a>
		
        	<a href="index.php?invitation">Greeting Invitation </a>

		
        
		</div>
		
		<div id="left">
		<h2 style="color:red; text-align:center;"><?php echo @$_GET['logged_in']; ?></h2>
		<?php 
		if(isset($_GET['rfq'])){
		
		include("rfq.php"); 
		
		}
		
			if(isset($_GET['insert_cat'])){
		
		include("insert_cat.php"); 
		
		}
		
		if(isset($_GET['view_cats'])){
		
		include("view_cats.php"); 
		
		}
		
		if(isset($_GET['edit_cat'])){
		
		include("edit_cat.php"); 
		
		}
		
		if(isset($_GET['insert_product'])){
		
		include("insert_product.php"); }
		if(isset($_GET['view_po'])){
		
		include("view_po.php"); 
		}
		if(isset($_GET['create_customers'])){
		
		include("create_customers.php"); 
		
		}
				
		if(isset($_GET['view_products'])){
		
		include("view_products.php"); 
		
		}
		if(isset($_GET['edit_pro'])){
		
		include("edit_pro.php"); 
		
		}
	
		
		if(isset($_GET['insert_brand'])){
		
		include("insert_brand.php"); 
		
		}
		
		if(isset($_GET['view_brands'])){
		
		include("view_brands.php"); 
		
		}
		if(isset($_GET['edit_brand'])){
		
		include("edit_brand.php"); 
		
		}
		if(isset($_GET['view_customers'])){
		
		include("view_customers.php"); 
		
		}
		if(isset($_GET['view_orders'])){
		
		include("view_orders.php"); 
		
		}
		
		if(isset($_GET['view_payments'])){
		
		include("view_payments.php"); 
		
		}
		if(isset($_GET['invitation'])){
		
		include("invitation.php"); 
		
		}if(isset($_GET['delete_customer'])){
		
		include("delete_customer.php"); 
		
		}
		?>
		</div>






	</div>


</body>
</html>

<?php } ?>