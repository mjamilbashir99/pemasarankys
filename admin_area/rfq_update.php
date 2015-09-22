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
			
			<a href="index.php?rfq">View RFQ</a>
           
            <a href="index.php?insert_product">Insert New Product</a>
            <a href="index.php?view_products">View All Products</a>
			<a href="index.php?insert_cat">Insert New Category</a>
			<a href="index.php?view_cats">View All Categories</a>
			<a href="index.php?view_customers">View Customers</a>
            <a href="index.php?create_customers">Create Customers</a>
			<a href="index.php?view_orders">View Orders</a>
			<a href="index.php?view_payments">View Payments</a>
			<a href="logout.php">Admin Logout</a>
		
        	<a href="index.php?invitation">Greeting Invitation </a>
			<a href="index.php?register">new customer  </a>
		
        
		</div>
		                     
		
<script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
<script>
        tinymce.init({selector:'textarea'});
</script>
	<div id="left">
		<h2 style="color:red; text-align:center;">
<div align="center" style="background-color: pink">

  <form method="post" action="update_price.php"  enctype="multipart/form-data">
				<table width="760" bgcolor="pink" > 

			<h4>View RFQ Update</h4>
	<tr align="center" bgcolor="skyblue">
		<th>Sr.</th>
        <th>Product title</th>
        <th>Image</th>
		<th>Quantity</th>
        <th>Unit Price</th>
		<th>Price</th>
		
	</tr>
   
    <?php
include("includes/db.php");
							  ob_start();
							  $order_id = $_GET['order_id'];
							  $get_pro = "SELECT od.*,p.*
											FROM order_details as od
											JOIN products as p
											on od.p_id=p.product_id
										  where order_no=$order_id";
							  $res = mysqli_query($con,$get_pro); 
							  $i = 0;
							  while ($row_pro=mysqli_fetch_array($res)){
								$product_title = $row_pro['product_title'];
								$pro_image = $row_pro['product_image'];
								$qty = $row_pro['qty'];
								$p_price = $row_pro['p_price'];
								$u_price = $row_pro['unit_price'];
								$ods_id = $row_pro['ods_id'];
								$order_no = $row_pro['order_no'];
							  	$i++;
	?>
  <tr align="center">
  <input name="ods_id[]" type="hidden" value="<?php echo $ods_id ?>"> 
   <input name="order_no" type="hidden" value="<?php echo $order_no ?>"> 
            <td>
               <?php echo $i;?>
            </td>
            <td>
               <?php echo  $product_title;?>
            </td>
             <td>
                 <img src='../admin_area/product_images/<?php echo $pro_image ?>' width='50' height='35'/>
            </td>
           <td>
                <?php echo $qty;?>
            </td>
    <td> 
   <input name="p_price[]" type="text" value="<?php echo $p_price ?>"> 
    </td>
     <td> 
   <input name="u_price[]" type="text" value="<?php echo $u_price ?>"> 
    </td>
	</tr>
      

	
	<?php } ?>
    </table>
    <input type="submit" name="update" value="Update" />
    </form>

                              
                              
    </div>
</div>
</div>


</body>
</html>



							  
                             
												  