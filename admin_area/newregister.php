<!DOCTYPE>
<?php 
include("includes/db.php");
function getIp() {
    $ip = $_SERVER['REMOTE_ADDR'];
 
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    }
 
    return $ip;
}
  
?>
<html>
<head>
<link rel="stylesheet" href="styles/style.css" media="all" />
</head>
<body>
<form method="post" action="" enctype="multipart/form-data">
  <div align="center">
    <table width="500" bgcolor="#FFFFFF" id="table1">
      <tr align="center">
        <table align="left" width="750">
          <tr align="center">
            <td colspan="6"><h2> <font face="Arial" style="font-size: 11pt">Create an Account</font></h2></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Customer Name:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_name" required/>
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Customer Email:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_email" required/>
              </span></font></td>
          </tr>
          <tr>
            <td align="right"></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="radio" value="individual" name="c_check" >
              individual</span></font> <font face="Arial"> <span style="font-size: 11pt">
              <input type="radio" value="Company" name="c_check" >
              Company</span> </font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Password:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="password" name="c_pass" required/>
              </span></font></td>
          </tr
                         >
          <tr>
            <td align="right"><font face="Arial" size="2">Company Name:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="comp_name" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Registration Number:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_RN" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Customer Image:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="file" name="c_image" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Address 1</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_address1" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Address 2</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_address2" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2"> City:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_city" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2"> State:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_state" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Customer Country:</font></td>
            <td><font face="Arial"><span style="font-size: 11pt">
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
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2"> Contact Person:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_contactP" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2"> Customer Contact 1:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_contactC1" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2"> Customer Contact 2:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="c_contactC2" />
              </span></font></td>
          </tr>
          <tr>
            <td align="right"><font face="Arial" size="2">Customer Address:</font></td>
            <td><font face="Arial"> <span style="font-size: 11pt">
              <input type="text" name="Cus_address" />
              </span></font></td>
          </tr>
          <tr align="center">
            <td colspan="6"><input type="submit" name="register" value="Create Account" /></td>
          </tr>
        </table>
      </tr>
    </table>
  </div>
  <h2 style="float:right; padding-right:20px;">&nbsp;</h2>
</form>
<?php 
	if(isset($_POST['register'])){
		$ip = getIp();
		//echo '12345';exit;
		$c_name=$_POST['c_name'];
 		$c_email=$_POST['c_email'];
 		$c_check=$_POST['c_check'];
 		$c_pass=$_POST['c_pass'];
 		$comp_name=$_POST['comp_name'];
 		$c_RN=$_POST['c_RN'];
 		$c_image = $_FILES['c_image']['name'];
		$c_image_tmp = $_FILES['c_image']['tmp_name']; 
 		$c_address1=$_POST['c_address1'];
 		$c_address2=$_POST['c_address2'];
 		$c_city=$_POST['c_city'];
 		$c_state=$_POST['c_state'];
 		$c_country=$_POST['c_country'];
 		$c_contactP=$_POST['c_contactP'];
 		$c_contactC1=$_POST['c_contactC1'];
 		$c_contactC2=$_POST['c_contactC2'];
 		$Cus_address=$_POST['Cus_address'];
		
		move_uploaded_file($c_image_tmp,"customer/customer_images/$c_image");
		
		echo $insert_c = "INSERT INTO  `customers` (customer_ip,`customer_name` ,  `Ind_OR_Company` ,  `customer_email` ,  `customer_pass` ,  `company_name` ,  `registration_number` ,  `address1` ,  `address2` ,  `customer_country` ,  `customer_city` ,  `State` ,  `contact_person` ,  `customer_contact1` , `customer_contact2` ,  `customer_address` ,  `customer_image` ) 
VALUES (
'$ip',  '$c_name',  '$c_check',  '$c_email',  '$c_pass',  '$comp_name',  '$c_RN',  '$c_address1',  '$c_address2',  '$c_country',  '$c_city',  '$c_state',  '$c_contactP',  
'$c_contactC1',  '$c_contactC2',  '$Cus_address',  '$c_image'
)";

	
		$run_c = mysqli_query($con, $insert_c); 
		



	
	}

?>
</div>
<!--Main Container ends here-->
</body>
</html>