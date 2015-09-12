<!DOCTYPE>

<?php 

include("includes/db.php");
include("../functions/functions.php");
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


	<form action="" method="post" enctype="multipart/form-data"> 
		
		
	<table  align="center" width="795" border="2" bgcolor="#187eae" id="table1"> 
			
			<tr align="center">
				<table align="left" width="750">
						
						<tr align="center">
							<td colspan="6"><h2>
							<font face="Arial" style="font-size: 11pt">Create an Customer</font></h2></td>
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
							<span style="font-size: 11pt">      <input type="radio" value="1" name="c_check" >individual</span></font>
                            
                       
                            
                            <font face="Arial">
							<span style="font-size: 11pt"><input type="radio" value="2" name="c_check" >Company</span>
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
	if(isset($_POST['register'])){
	
		
			$c_name=$_POST['c_name'];
			$c_email=$_POST['c_email'];
			$c_check=$_POST['c_check'];
  
$ip = getIp();
  
 $c_pass=$_POST['c_pass'];
 $comp_name=$_POST['comp_name'];
 $c_RN=$_POST['c_RN'];
 $c_image	=	$_FILES['c_image']['name'];	
 $c_address1=$_POST['c_address1'];
 $c_address2=$_POST['c_address2'];
 $c_city=$_POST['c_city'];
 $c_state=$_POST['c_state'];
 $c_country=$_POST['c_country'];
 $c_contactP=$_POST['c_contactP'];
 $c_contactC1=$_POST['c_contactC1'];
 $c_contactC2=$_POST['c_contactC2'];
 $Cus_address=$_POST['Cus_address'];
		
		  move_uploaded_file($_FILES['c_image']['tmp_name'],"../customer/customer_images/".$c_image);	
		 $insert_c = "INSERT INTO  `customers` (customer_ip,`customer_name`,`Ind_OR_Company`,`customer_email`,`customer_pass`,`company_name`,`registration_number`,`address1`,`address2`,`customer_country`,`customer_city`,`State`,`contact_person`,`customer_contact1`,`customer_contact2`,`customer_address`,`customer_image`) 
VALUES ('$ip','$c_name','$c_check','$c_email','$c_pass','$comp_name','$c_RN','$c_address1','$c_address2','$c_country','$c_city','$c_state',  '$c_contactP','$c_contactC1','$c_contactC2','$Cus_address','$c_image')";
		$run_c = mysqli_query($con, $insert_c); 
			if($run_c!=0){
		echo "<script>alert('Account has been created successfully, Thanks!')</script>";
		
		}else{
			echo "<script>alert('Account Not created successfully!')</script>";
			
			}
		}
	



	




