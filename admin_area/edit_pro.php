<!DOCTYPE>

<?php 

include("includes/db.php");

if(isset($_GET['edit_pro'])){

	$get_id = $_GET['edit_pro']; 
	
	$get_pro = "select * from products where product_id='$get_id'";
	
	$run_pro = mysqli_query($con, $get_pro); 
	
	$i = 0;
	
	$row_pro=mysqli_fetch_array($run_pro);
		
		$pro_id = $row_pro['product_id'];
		$pro_title = $row_pro['product_title'];
		$pro_image = $row_pro['product_image'];
		$pro_price = $row_pro['product_price'];
		$pro_desc = $row_pro['product_desc']; 
		$pro_keywords = $row_pro['product_keywords']; 
		$pro_cat = $row_pro['product_cat'];
		$pro_brand = $row_pro['product_brand'];
		$pro_gallery1 = $row_pro['gallery_image1'];
		$pro_gallery2 = $row_pro['gallery_image2'];
		$pro_gallery3 = $row_pro['gallery_image3'];
		$pro_gallery4 = $row_pro['gallery_image4'];
		$pro_gallery5 = $row_pro['gallery_image5'];
		
		$get_cat = "select * from categories where cat_id='$pro_cat'";
		
		$run_cat=mysqli_query($con, $get_cat); 
		
		$row_cat=mysqli_fetch_array($run_cat); 
		
		$category_title = $row_cat['cat_title'];
		
		$get_brand = "select * from brands where brand_id='$pro_brand'";
		
		$run_brand=mysqli_query($con, $get_brand); 
		
		$row_brand=mysqli_fetch_array($run_brand); 
		
		$brand_title = $row_brand['brand_title'];
}
?>
<html>
	<head>
		<title>Update Product</title> 
		
<script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
<script>
        tinymce.init({selector:'textarea'});
</script>
	</head>
	
<body bgcolor="skyblue">


	<form action="" method="post" enctype="multipart/form-data"> 
		
		<table align="center" width="795" border="2" bgcolor="#187eae">
			
			<tr align="center">
				<td colspan="7"><h2>Edit & Update Product</h2></td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Title:</b></td>
				<td><input type="text" name="product_title" size="60" value="<?php echo $pro_title;?>"/></td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Category:</b></td>
				<td>
				<select name="product_cat" >
					<option><?php echo $category_title; ?></option>
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
					<option><?php echo $brand_title; ?></option>
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
				<td><input type="file" name="product_image" /><img src="product_images/<?php echo $pro_image; ?>" width="60" height="60"/></td>
			</tr>
			<tr>
				<td align="right"><b>Gallery Image 1:</b></td>
				<td><input type="file" name="gallery_image1" /><img src="product_images/<?php echo $pro_gallery1; ?>" width="60" height="60"/></td>
			</tr>
            <tr>
				<td align="right"><b>Gallery Image 2:</b></td>
				<td><input type="file" name="gallery_image2" /><img src="product_images/<?php echo $pro_gallery2; ?>" width="60" height="60"/></td>
			</tr>
            <tr>
				<td align="right"><b>Gallery Image 3:</b></td>
				<td><input type="file" name="gallery_image3" /><img src="product_images/<?php echo $pro_gallery3; ?>" width="60" height="60"/></td>
			</tr>
            <tr>
				<td align="right"><b>Gallery Image 4:</b></td>
				<td><input type="file" name="gallery_image4" /><img src="product_images/<?php echo $pro_gallery4; ?>" width="60" height="60"/></td>
			</tr>
            <tr>
				<td align="right"><b>Gallery Image 5:</b></td>
				<td><input type="file" name="gallery_image5" /><img src="product_images/<?php echo $pro_gallery5; ?>" width="60" height="60"/></td>
			</tr>
			
			
			<tr>
				<td align="right"><b>Product Description:</b></td>
				<td><textarea name="product_desc" cols="20" rows="10"><?php echo $pro_desc;?></textarea></td>
			</tr>
			
			<tr>
				<td align="right"><b>Product Keywords:</b></td>
				<td><input type="text" name="product_keywords" size="50" value="<?php echo $pro_keywords;?>"/></td>
			</tr>
			
			<tr align="center">
				<td colspan="7"><input type="submit" name="update_product" value="Update Product"/></td>
			</tr>
		
		</table>
	
	
	</form>


</body> 
</html>
<?php 

	if(isset($_POST['update_product'])){
	
		//getting the text data from the fields
		
		$update_id = $pro_id;
		
		$product_title = $_POST['product_title'];
		$product_cat= $_POST['product_cat'];
		$product_brand = $_POST['product_brand'];
		$product_price = $_POST['product_price'];
		$product_desc = $_POST['product_desc'];
		$product_keywords = $_POST['product_keywords'];
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
	
		//getting the image from the field
		$product_image = $_FILES['product_image']['name'];
		$product_image_tmp = $_FILES['product_image']['tmp_name'];
		
		move_uploaded_file($product_image_tmp,"product_images/$product_image");
	
		 $update_product = "update products set product_cat='$product_cat',product_brand='$product_brand',product_title='$product_title',product_price='$product_price',product_desc='$product_desc',product_image='$product_image', product_keywords='$product_keywords',gallery_image1='$gallery_image1',gallery_image2='$gallery_image2',gallery_image3='$gallery_image3',gallery_image4='$gallery_image4',gallery_image5='$gallery_image5' where product_id='$update_id'";
		 
		 $run_product = mysqli_query($con, $update_product);
		 
		 if($run_product){
		 
		 echo "<script>alert('Product has been updated!')</script>";
		 
		 echo "<script>window.open('index.php?view_products','_self')</script>";
		 
		 }
	}








?>












