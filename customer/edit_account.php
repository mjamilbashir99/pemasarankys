<?php 

 include_once("functions/functions.php");
if($_SESSION['customer_email']  == ""){
	echo"<script>window.open('../index.php','_self')</script>";

 }	
	include("../includes/db.php"); 
	//session_start();
	/*
	SELECT  `customer_id` ,  `customer_ip` ,  `customer_name` ,  `Ind_OR_Company` ,  `customer_email` ,  `customer_pass` , `company_name` ,  `registration_number` ,  `address1` ,  `address2` ,  `customer_country` ,  `customer_city` ,  `State` ,  `contact_person` , `customer_contact1` ,  `customer_contact2` ,  `customer_address` ,  `customer_image` 
FROM  `customers` 
	*/
				
	 $user = $_SESSION['customer_email'];
	 $c_id = $_SESSION['c_id'];
	
	$get_customer = "select * from customers where customer_email='$user'";
	$run_customer = mysqli_query($con, $get_customer); 
	$row_customer = mysqli_fetch_array($run_customer); 

	$c_id = $row_customer['customer_id'];
	$name = $row_customer['customer_name'];
	 $radiovalue=$row_customer['Ind_OR_Company'];
	$email = $row_customer['customer_email'];
	$pass = $row_customer['customer_pass'];
	$company_name = $row_customer['company_name'];
	$registration_number= $row_customer['registration_number'];
	$add1=$row_customer['address1'];
	$add2=$row_customer['address2'];
	$country = $row_customer['customer_country'];
	$city = $row_customer['customer_city'];
	$State = $row_customer['State'];
	$contact_person = $row_customer['contact_person'];
	$customer_contact1 = $row_customer['customer_contact1'];
	$customer_contact2 = $row_customer['customer_contact2'];
	$address= $row_customer['customer_address'];
	$image = $row_customer['customer_image'];
	
?>
<form action="" method="post" enctype="multipart/form-data">
<input type="hidden" name="c_id" value="<?php  echo $c_id;?>" required/>
  <table align="center" width="750">
    <tr align="center">
      <td colspan="2" width="467"><h2><font face="Arial">Update your Account</font></h2></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Name:</font></td>
      <td width="236"><input type="text" name="c_name" value="<?php echo $name;?>" required/></td>
      <td width="273">&nbsp;</td>
    </tr>
<!--    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Email:</font></td>
      <td width="236"><input type="text" name="c_email" value="<?php echo $email;?>" required/></td>
      <td width="273">&nbsp;</td>
    </tr>-->
    <tr>
      <td></td>
      <td>

      <font face="Arial"> <span style="font-size: 11pt">
      <?php if($radiovalue=='1'){?>
        <input type="radio" value="1" checked="checked"  name="Ind_OR_Company">
        individual</span>
        </font>
        <?php } else { ?>
        <font face="Arial"> <span style="font-size: 11pt">
        <input type="radio" value="1" name="Ind_OR_Company">
             individual</span>
        </font>
        <?php } ?>
         <font face="Arial"> <span style="font-size: 11pt">
          <?php if($radiovalue=='2'){?>
        <input type="radio" value="2" checked="checked" name="Ind_OR_Company">
        Company</span>
         </font>
          <?php } else { ?>
        <font face="Arial"> <span style="font-size: 11pt">
        <input type="radio" value="2" name="Ind_OR_Company">
             Company</span>
        </font>
        <?php } ?>
         </td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Password:</font></td>
      <td width="236"><input type="password" name="c_pass" value="<?php echo $pass;?>" required/></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font face="Arial" size="2">Company Name:</font></td>
      <td><font face="Arial"> <span style="font-size: 11pt">
        <input type="text" name="comp_name" value="<?php echo $company_name;?>" required/>
        </span></font></td>
    </tr>
    <tr>
      <td align="right"><font face="Arial" size="2">Registration Number:</font></td>
      <td><font face="Arial"> <span style="font-size: 11pt">
        <input type="text" name="c_RN" value="<?php echo $registration_number;?>" required/>
        </span></font></td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Image:</font>
        <p>&nbsp;</td>
      <td width="236"><img src="customer_images/<?php echo $image; ?>" width="50" height="50"/>
        <input type="file" name="c_image" required="required"/></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font face="Arial" size="2">Address 1</font></td>
      <td><font face="Arial"> <span style="font-size: 11pt">
        <input type="text" name="c_address1" value="<?php echo $add1;?>" required/>
        </span></font></td>
    </tr>
    <tr>
      <td align="right"><font face="Arial" size="2">Address 2</font></td>
      <td><font face="Arial"> <span style="font-size: 11pt">
        <input type="text" name="c_address2" value="<?php echo $add2;?>" required/>
        </span></font></td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer City:</font></td>
      <td width="236"><input type="text" name="c_city" value="<?php echo $city;?>"/></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right"><font face="Arial" size="2"> State:</font></td>
      <td><font face="Arial"> <span style="font-size: 11pt">
        <input type="text" name="c_state" value="<?php echo $State ;?>" required/>
        </span></font></td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Country:</font></td>
      <td width="236"><select name="c_country">
          <option><?php echo $country; ?></option>
          <option>Afghanistan</option>
          <option>India</option>
          <option>Japan</option>
          <option>Pakistan</option>
          <option>Israel</option>
          <option>Nepal</option>
          <option>United Arab Emirates</option>
          <option>United States</option>
          <option>United Kingdom</option>
        </select></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Contact Person:</font></td>
      <td width="236"><input type="text" name="c_contact" value="<?php echo $contact_person;?>"/></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Contact 1:</font></td>
      <td width="236"><input type="text" name="c_contact1" value="<?php echo $customer_contact1;?>"/></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Contact 2:</font></td>
      <td width="236"><input type="text" name="c_contact2" value="<?php echo $customer_contact2?>"/></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr>
      <td align="right" width="227"><font face="Arial" size="2">Customer Address</font></td>
      <td width="236"><input type="text" name="c_address" value="<?php echo $address;?>"/></td>
      <td width="273">&nbsp;</td>
    </tr>
    <tr align="center">
      <td colspan="2" width="467"><input type="submit" name="update" value="Update Account" /></td>
      <td width="273">&nbsp;</td>
    </tr>
  </table>
</form>
<?php 
	if(isset($_POST['update'])){
		
		$ip = getIp();
		$customer_id 	= $_POST['c_id'];
		$c_name 		= $_POST['c_name'];
		//$c_email 		= $_POST['c_email'];
		$c_check 		= $_POST['Ind_OR_Company'];
		$c_pass 		= $_POST['c_pass'];
		$comp_name 		= $_POST['comp_name'];
		$c_RN 			= $_POST['c_RN'];
		$c_image 		= rand(1,100).$_FILES['c_image']['name'];
		$c_image_tmp 	= $_FILES['c_image']['tmp_name'];
		$c_address1 	= $_POST['c_address1'];
		$c_address2 	= $_POST['c_address2'];
		$c_city 		= $_POST['c_city'];
		$c_state	 	= $_POST['c_state'];
		$c_country	 	= $_POST['c_country'];
		$c_contact 		= $_POST['c_contact'];
		$c_contact1 	= $_POST['c_contact1'];
		$c_contact2 	= $_POST['c_contact2'];
		$c_address 		= $_POST['c_address'];
		
		move_uploaded_file($c_image_tmp,"customer_images/$c_image");
		
		 //echo "update customers set customer_name='".$c_name."', customer_email='".$c_email."',Ind_OR_Company='".$c_check."', customer_pass='".$c_pass."',company_name='".$comp_name."',registration_number='".$c_RN."', address1='".$c_address1."', address2='".$c_address2."', customer_country='".$c_country."', customer_city='".$c_city."', State='".$c_state."', contact_person='".$c_contact."',  customer_contact1='".$c_contact1."', customer_contact2='".$c_contact2."',customer_address='".$c_address."', customer_image='".$c_image."' where customer_id='".$customer_id."'"; exit;
		 $update_c = "update customers set customer_name='".$c_name."',Ind_OR_Company='".$c_check."', customer_pass='".$c_pass."',company_name='".$comp_name."',registration_number='".$c_RN."', address1='".$c_address1."', address2='".$c_address2."', customer_country='".$c_country."', customer_city='".$c_city."', State='".$c_state."', contact_person='".$c_contact."',  customer_contact1='".$c_contact1."', customer_contact2='".$c_contact2."',customer_address='".$c_address."', customer_image='".$c_image."' where customer_id='".$c_id."'";
		$run_update = mysqli_query($con, $update_c); 
		if($run_update){
			echo "<script>alert('Your account successfully Updated')</script>";
			echo "<script>window.open('my_account.php','_self')</script>";
		
		}
	}
?>
