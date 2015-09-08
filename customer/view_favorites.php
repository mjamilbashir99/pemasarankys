<!DOCTYPE>
<?php 
session_start();
if($_SESSION['customer_email']  == "")
header("location:../index.php");
include("functions/functions.php");

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
<div class="header_wrapper" style="width: 1000px; height: 84px"> <a href="../index.php"><img id="logo" src="../images/logo.gif" /> </a> <img id="banner" src="../images/ad_banner.gif" /></div>
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
        <li><b><a href="myprofile.php"><font color="#FFFF00" size="1">My Profile</font></a><font color="#FFFF00" size="1"> | </font><a href="logon_success.php"><font color="#FFFF00" size="1">Main Menu</font></a></b></li>
        <li><a href="my_account.php">My Account</a></li>
        <li><a href="my_account.php?edit_account">Edit Account</a></li>
        <li><a href="my_account.php?change_pass">Change Password</a></li>
        <li><a href="my_account.php?delete_account">Delete Account</a></li>
        <li><a href="sentfb.php">Send Feedback</a></li>
        <li><a href="logout.php">Logout</a></li>
        </li>
        &nbsp;
    <ul>
</div>
<div id="content_area">
  <?php cart(); ?>
  <div id="shopping_cart">
    <table border="0" width="-698" height="0">
      <tr><span style="float:left; font-size:15px; font-family:arial; padding:5px; line-height:30px;"></span>
			<?php 
                if(isset($_SESSION['customer_email'])){
                echo "<b>Welcome1:</b>" . $_SESSION['customer_email'] ; echo "| View All Favorites";
                
                }
            ?>
        <td height="1" width="-698"></td>
      </tr>
    </table>
  </div>
  <div id="products_box">
    <?php
		include("includes/db.php");
		$cid = $_SESSION['c_id'];
	  
		if(isset($_POST['vfav'])){
		    $pro_id	=	$_GET['pro_id'];
			$date=	date("Y-m-d");
			 $q="INSERT INTO `favorites`(`user_id`,`Product_id`,`fav_date`)
					VALUES ('$cid',$pro_id,$date)";
			if( mysqli_query($con, $q)!=0)
			{
				echo "Add favorite product";
			}
			else
			{
				echo "favorite product is not selected";
			}
		}
	?>
    <table width="795" class="order_table" align="center" bgcolor="pink">
      <tr align="center" bgcolor="skyblue">
        <th>No</th>
        <th>Product</th>
       
        <th>Edit</th>
      </tr>
      <?php 
			include("includes/db.php");
			$cid = $_SESSION['c_id'];
			//echo "select user_id,Product_id,view,Date from favorites where user_id ='".$cid."'"; exit;
			$sel_fav = "select user_id,Product_id,view,fav_date from favorites where user_id ='".$cid."'";
			$run_fav = mysqli_query($con, $sel_fav);
			$i = 1;
			while($row_data = mysqli_fetch_array($run_fav))
		
			{
		
	  ?>
              <tr align="center">
                <td><?php echo $i;?></td>
                <td>
                	<?php 
						$product_id = $row_data['Product_id'];
						$sel_p = "select product_title from products where product_id='".$product_id."'";
						$run_p = mysqli_query($con, $sel_p);
						$product = mysqli_fetch_assoc($run_p);
						echo $product['product_title'];
						
					?>
                </td>
                
                <td>
                <form action="fav_delt.php?p_id=<?php echo $product_id ?>" method="post">
<input name="cartid" type="hidden" value="<?php echo $row_data['Product_id']; ?>">
<input type="hidden" name="Check out" value="<?php echo $row_data['c_id']; ?>">
<input type="submit" name="delete" value="Remove"/>
</form>
               </td>
               
              </tr>
      <?php 
	  $i++; 
	  } ?>
    </table>
  </div>
</div>
</div>
<!--Content wrapper ends-->
<div id="footer">
  <h2 style="text-align:center; padding-top:30px;"> <span style="font-weight: 400"><font size="1" face="Arial">&copy; 2015 by 
    Pemasarankys</font></span></h2>
</div>
</div>
<!--Main Container ends here-->
</body>
</html>