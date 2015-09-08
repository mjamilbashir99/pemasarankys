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
		
		
	<table width="500" bgcolor="#FFFFFF" id="table1"> 
			
			<tr align="center">
				<table align="left" width="750">
						
						<tr align="center">
							<td colspan="6"><h2>
							<font face="Arial" style="font-size: 11pt">Create an Account</font></h2></td>
						</tr>
						
						<tr>
							<td align="right"><font face="Arial" size="2">Customer Name:</font></td>
							<td>
                            <font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_name" required/></span></font>
                            
                            </td>
						</tr>
                        <tr>
							<td align="right"><font face="Arial" size="2">Customer Email:</font></td>
							<td>
                            <font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_email" required/></span></font>
                            </td>
						</tr>
						<tr>
							<td align="right">
                       
                            
                            </td>
							<td>
                            
                                <font face="Arial">
							<span style="font-size: 11pt">      <input type="radio" value="individual" name="c_check" >individual</span></font>
                            
                       
                            
                            <font face="Arial">
							<span style="font-size: 11pt"><input type="radio" value="Company" name="c_check" >Company</span>
                            </font>
                            
                            
                            </td>
                            
                            
						</tr>
						
                         <tr>
							<td align="right"><font face="Arial" size="2">Password:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="password" name="c_pass" required/></span></font></td>
						</tr
                         ><tr>
							<td align="right"><font face="Arial" size="2">Company Name:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="comp_name" required/></span></font></td>
						</tr>
                         <tr>
							<td align="right"><font face="Arial" size="2">Registration Number:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_RN" required/></span></font></td>
						</tr>
						
						<tr>
							<td align="right"><font face="Arial" size="2">Customer Image:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="file" name="c_image" required/></span></font></td>
						</tr>
                        <tr>
							<td align="right"><font face="Arial" size="2">Address 1</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_address1" required/></span></font></td>
						</tr><tr>
							<td align="right"><font face="Arial" size="2">Address 2</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_address2" required/></span></font></td>
						</tr>
                        
                        
						<tr>
							<td align="right"><font face="Arial" size="2"> City:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_city" required/></span></font></td>
						</tr>
                        <tr>
							<td align="right"><font face="Arial" size="2"> State:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_state" required/></span></font></td>
						</tr>
                        <tr>
							<td align="right"><font face="Arial" size="2">Customer Country:</font></td>
							<td>
							<font face="Arial"><span style="font-size: 11pt">
							<select name="c_country">
								<option>Select a State</option>
							    <option>Selangor</option>
								<option>Kuala Lumpur</option>
								<option>Putra Jaya</option>
								<option>Kedah</option>
								<option>Kelantan</option>
								<option>Melaka</option>
								<option>N. Sembilan</option>
								<option>Pahang</option>
								<option>Penang</option>
								<option>Perak</option>
								<option>Perlis</option>
								<option>Sabah</option>
								<option>Sarawak</option>
								<option>Terengganu</option>
								<option>Johor</option>
							</select>
							
							</span></font>
							
							</td>
						</tr>
                        
                        <tr>
							<td align="right"><font face="Arial" size="2"> Contact Person:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_contactP" required/></span></font></td>
						</tr>
						<tr>
							<td align="right"><font face="Arial" size="2"> Customer Contact 1:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_contactC1" required/></span></font></td>
						</tr>
						<tr>
							<td align="right"><font face="Arial" size="2"> Customer Contact 2:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="text" name="c_contactC2" required/></span></font></td>
						</tr>
						
                        
                        <tr>
							<td align="right"><font face="Arial" size="2">Customer Address:</font></td>
							<td><font face="Arial">
							<span style="font-size: 11pt"><input type="test" name="Cus_address" required/></span></font></td>
						</tr>
						
						
						
						
						
						
						
						
						
						
						
						
						
					<tr align="center">
						<td colspan="6"><input type="submit" name="register" value="Create Account" /></td>
					</tr>
					
					
					
					</table>
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
	
		 $insert_product = "insert into products (product_cat,product_brand,product_title,product_price,product_desc,product_image,product_keywords) values ('$product_cat','$product_brand','$product_title','$product_price','$product_desc','$product_image','$product_keywords')";
		 
		 $insert_pro = mysqli_query($con, $insert_product);
		 
		 if($insert_pro){
		 
		 echo "<script>alert('Product Has been inserted!')</script>";
		 echo "<script>window.open('index.php?insert_product','_self')</script>";
		 
		 }
	}








?>



