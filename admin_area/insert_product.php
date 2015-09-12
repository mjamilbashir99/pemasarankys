<!DOCTYPE>

<?php 

include("includes/db.php");

?>
<html>
	<head>
		<title>Pemasaran KYS - Inserting Product</title> 
		
<script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
<script>
        tinymce.init({selector:'textarea'});
</script>
	</head>
	
<body bgcolor="skyblue">


	<form action="insert_product.php" method="post" enctype="multipart/form-data"> 
		
		<table align="center" width="795" border="2" bgcolor="#187eae">
			
			<tr align="center">
				<td colspan="7"><h2>Insert New Post Here</h2></td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Title:</b></td>
				<td><input type="text" name="product_title" size="60" required/></td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Category:</b></td>
				<td>
				<select name="product_cat" >
					<option>Select a Category</option>
					<?php 
		$get_cats = "select * from categories";
	
		$run_cats = mysqli_query($con, $get_cats);
	
		while ($row_cats=mysqli_fetch_array($run_cats)){
	
		$cat_id = $row_cats['cat_id']; 
		$cat_title = $row_cats['cat_title'];
	
		echo "<option value='$cat_id'>$cat_title</option>";
	
	
	}
					
					?>
				</select>
				
				
				</td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Brand:</b></td>
				<td>
				<select name="product_brand" >
					<option>Select a Brand</option>
					<?php 
		$get_brands = "select * from brands";
	
	$run_brands = mysqli_query($con, $get_brands);
	
	while ($row_brands=mysqli_fetch_array($run_brands)){
	
		$brand_id = $row_brands['brand_id']; 
		$brand_title = $row_brands['brand_title'];
	
	echo "<option value='$brand_id'>$brand_title</option>";
	
	
	}
					
					?>
				</select>
				
				
				</td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Image:</b></td>
				<td><input type="file" name="product_image" /></td>
			</tr>
            <tr>
				<td align="right"><b>Gallery Image 1:</b></td>
				<td><input type="file" name="gallery_image1" /></td>
			</tr>
			  <tr>
				<td align="right"><b>Gallery Image 2:</b></td>
				<td><input type="file" name="gallery_image2" /></td>
			</tr>
              <tr>
				<td align="right"><b>Gallery Image 3:</b></td>
				<td><input type="file" name="gallery_image3" /></td>
			</tr>
              <tr>
				<td align="right"><b>Gallery Image 4:</b></td>
				<td><input type="file" name="gallery_image4" /></td>
			</tr>
              <tr>
				<td align="right"><b>Gallery Image 5:</b></td>
				<td><input type="file" name="gallery_image5" /></td>
			</tr>
			<tr>
				<td align="right"><b>Product Price:</b></td>
				<td><input type="text" name="product_price" required/></td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Description:</b></td>
				<td><textarea name="product_desc" cols="20" rows="10"></textarea></td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Keywords:</b></td>
				<td><input type="text" name="product_keywords" size="50" required/></td>
			</tr>
			
			<tr align="center">
				<td colspan="7"><input type="submit" name="insert_post" value="Insert Product Now"/></td>
			</tr>
		
		</table>
	
	
	</form>


</body> 
</html>
<?php 

	if(isset($_POST['insert_post'])){
	
		//getting the text data from the fields
		$product_title = $_POST['product_title'];
		$product_cat= $_POST['product_cat'];
		$product_brand = $_POST['product_brand'];
		$product_price = $_POST['product_price'];
		$product_desc = $_POST['product_desc'];
		$product_keywords = $_POST['product_keywords'];
	
		//getting the image from the field
		$product_image = $_FILES['product_image']['name'];
		$product_image_tmp = $_FILES['product_image']['tmp_name'];
		
		move_uploaded_file($product_image_tmp,"product_images/$product_image");
	
	    $gallery_image1 = $_FILES['gallery_image1']['name'];
		$gallery_image1_tmp = $_FILES['gallery_image1']['tmp_name'];
		
		move_uploaded_file($gallery_image1_tmp,"product_images/$gallery_image1");
		
		$gallery_image2 = $_FILES['gallery_image2']['name'];
		$gallery_image2_tmp = $_FILES['gallery_image2']['tmp_name'];
		
		move_uploaded_file($gallery_image2_tmp,"product_images/$gallery_image2");
		
		$gallery_image3 = $_FILES['gallery_image3']['name'];
		$gallery_image3_tmp = $_FILES['gallery_image3']['tmp_name'];
		
		move_uploaded_file($gallery_image3_tmp,"product_images/$gallery_image3");
		
		$gallery_image4 = $_FILES['gallery_image4']['name'];
		$gallery_image4_tmp = $_FILES['gallery_image4']['tmp_name'];
		
		move_uploaded_file($gallery_image4_tmp,"product_images/$gallery_image4");
		
		$gallery_image5= $_FILES['gallery_image5']['name'];
		$gallery_image5_tmp = $_FILES['gallery_image5']['tmp_name'];
		
		move_uploaded_file($gallery_image5_tmp,"product_images/$gallery_image5");
	
	  	
		 $insert_product = "insert into products (product_cat,product_brand,product_title,product_price,product_desc,product_image,product_keywords,gallery_image1,gallery_image2,gallery_image3,gallery_image4,gallery_image5) values ('$product_cat','$product_brand','$product_title','$product_price','$product_desc','$product_image','$product_keywords','$gallery_image1','$gallery_image2','$gallery_image3','$gallery_image4','$gallery_image5')";
		 
		 $insert_pro = mysqli_query($con, $insert_product);
		 
		 if($insert_pro){
		 
		 echo "<script>alert('Product Has been inserted!')</script>";
		 echo "<script>window.open('index.php?insert_product','_self')</script>";
		 
		 }
	}








?>



