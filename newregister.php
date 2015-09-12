<!DOCTYPE>
<?php 
session_start();
include("functions/functions.php");
include("includes/db.php");

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
			
				
				
				<ul id="cats">
				
			<div id="sidebar_title">Login</div>
				
				<ul id="cats">
				
				<ul>
				
				<li><a href="forgotpass.php">Forget Password</a></li>
				<li><a href="newregister.php">New Registration</a></li>				
				<ul>
				
				</ul>
			
			
			</div>
		
			<div id="content_area">
			
			
			
			

				
				</div>
			
			</div>
		</div>
		<!--Content wrapper ends-->
		
				
			
				
					
				
				

					
					<td colspan="3"> 
	
	<form method="post" action=""> 
		
		<div align="center">
		
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
							<span style="font-size: 11pt"><input type="text" name="c_email" id="c_email" required/></span></font>
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
						<td colspan="6"><input type="submit" name="submit" id="submit" value="Create Account" /></td>
					</tr>
					
					
					</table>
			</tr>
			
		</table> 
	
			</div>
	
			<h2 style="float:right; padding-right:20px;">&nbsp;</h2>
	
	
	</form>
	
					<p>&nbsp;</p>
					<p>&nbsp;</div>
			
				<div id="products_box">
				
				</div>
			
			</div>
		</div>
		<!--Content wrapper ends-->
		
		<div id="footer">
		
		<h2 style="text-align:center; padding-top:30px;">
		<span style="font-weight: 400"><font size="1" face="Arial">&copy; 2015 by www.sundar.com</font></span></h2>
		
		</div>
	
	
	<?php 
	if(isset($_POST['submit'])){

			$c_name=$_POST['c_name'];
			$c_email=$_POST['c_email'];
				$sql = "SELECT email FROM customers WHERE c_email = $c_email";
				$select = mysqli_query($con, $sql);
				$row = mysqli_fetch_assoc($select);
var_dump($row);

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
		
		
		
		
	
		  move_uploaded_file($_FILES['c_image']['tmp_name'],"customer/customer_images/".$c_image);	
		
		
		 $insert_c = "INSERT INTO  `customers` (customer_ip,`customer_name` ,  `Ind_OR_Company` ,  `customer_email` ,  `customer_pass` ,  `company_name` ,  `registration_number` ,  `address1` ,  `address2` ,  `customer_country` ,  `customer_city` ,  `State` ,  `contact_person` ,  `customer_contact1` , `customer_contact2` ,  `customer_address` ,  `customer_image`,`status` ) 
VALUES (
'$ip',  '$c_name',  '$c_check',  '$c_email',  '$c_pass',  '$comp_name',  '$c_RN',  '$c_address1',  '$c_address2',  '$c_country',  '$c_city',  '$c_state',  '$c_contactP',  
'$c_contactC1',  '$c_contactC2',  '$Cus_address',  '$c_image','0')";

	
		$run_c = mysqli_query($con, $insert_c); 
		
		//var_dump($run_c);
		
		$sel_cart = "select * from cart where ip_add='$ip'";
	
		$run_cart = mysqli_query($con, $sel_cart); 
		
	   $check_cart = mysqli_num_rows($run_cart); 
		
		
		
		
		if($check_cart==0){
		
		$_SESSION['customer_email']=$c_email; 
	
		echo "<script>alert('Account has been created successfully, Thanks!')</script>";
		echo "<script>window.open('login.php','_self')</script>";
	
		}
		else {
		
		$_SESSION['customer_email']=$c_email; 
		
		echo "<script>alert('Account has been created successfully, Thanks!')</script>";
		
		echo "<script>window.open('index.php','_self')</script>";
		
		}
	
	}

?>
	
	
	
	</div> 
<!--Main Container ends here-->


</body>
</html>