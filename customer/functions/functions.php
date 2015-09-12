<?php 
$host =$_SERVER['HTTP_HOST'];
if($host == "localhost")
{
	$con = mysqli_connect("localhost","root","","pemasmy12_rootdb");
}
else
{
	$con = mysqli_connect("localhost","pemasmy1_sundar","R@@tDb","pemasmy1_rootdb");
}
if (mysqli_connect_errno())
  {
  echo "The Connection was not established: " . mysqli_connect_error();
  }
 // getting the user IP address
  if (!function_exists('getIp')){
  function getIp() {
    $ip = $_SERVER['REMOTE_ADDR'];
 
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    }
 
    return $ip;
}
  }
//creating the shopping cart
function cart(){

if(isset($_GET['add_cart'])){

	global $con; 
	
	$ip = getIp();
	
	$pro_id = $_GET['add_cart'];

	$check_pro = "select * from cart where ip_add='$ip' AND p_id='$pro_id'";
	
	$run_check = mysqli_query($con, $check_pro); 
	
	if(mysqli_num_rows($run_check)>0){

	echo "";
	
	}
	else {
	
	$insert_pro = "insert into cart (p_id,ip_add) values ('$pro_id','$ip')";
	
	$run_pro = mysqli_query($con, $insert_pro); 
	
	echo "<script>window.open('all_products.php','_self')</script>";
	}
	
}


}
 // getting the total added items
 
 function total_items(){
 
	if(isset($_GET['add_cart'])){
	
		global $con; 
		
		$ip = getIp(); 
		
		$get_items = "select * from cart where ip_add='$ip'";
		
		$run_items = mysqli_query($con, $get_items); 
		
		$count_items = mysqli_num_rows($run_items);
		
		}
		
		else {
		
		global $con; 
		
		$ip = '';//getIp(); 
		
		$get_items = "select * from cart where ip_add='$ip'";
		
		$run_items = mysqli_query($con, $get_items); 
		
		$count_items = mysqli_num_rows($run_items);
		
		}
	
	echo $count_items;
	}
  

//getting the categories

function getCats(){
	
	global $con; 
	
	$get_cats = "select * from categories";
	
	$run_cats = mysqli_query($con, $get_cats);
	
	while ($row_cats=mysqli_fetch_array($run_cats)){
	
		$cat_id = $row_cats['cat_id']; 
		$cat_title = $row_cats['cat_title'];
	
	echo "<li><a href='all_products.php?cat=$cat_id'>$cat_title</a></li>";
	
	
	}


}

//getting the brands


function getPro(){

	if(!isset($_GET['cat'])){
		if(!isset($_GET['brand'])){

	global $con; 
	
	$get_pro = "select * from products order by product_id desc ";

	$run_pro = mysqli_query($con, $get_pro); 
	$i=1; 
	echo "<table border='1' cellpadding='2'>
					<tr>";
	while($row_pro=mysqli_fetch_array($run_pro))
	{
		$pro_id = $row_pro['product_id'];
		$pro_cat = $row_pro['product_cat'];
		$pro_brand = $row_pro['product_brand'];
		$pro_title = $row_pro['product_title'];
		$pro_image = $row_pro['product_image'];
	
		echo " <td width='220' height='120' style='padding:10px;'>
		<h3 style='height:50'>$pro_title</h3>
		<img src='../admin_area/product_images/$pro_image' width='180' height='180'/>
		<form action='view_favorites.php?pro_id=$pro_id' method='post'>
		<input type='submit' value='Add to favorites' name='vfav'>
		</form>
		<form action='all_rfq.php?prod_id=$pro_id' method='post'>
		<input type='submit' value='Add to RFQ' name='cart'>
		</form>
		<a href='details.php?pro_id=$pro_id' style='float:left;'>Details |</a>
		<a href='logon_success.php?pro_id=$pro_id' style='float:left;'>Back |</a>
		<a href='Tell_friend.php?pro_id=$pro_id' style='float:left;'>Tell To Friend |</a>
		
		</td>";
			if($i%3==0)
			 echo"</tr><tr>";
			$i++;
		}
	}
echo	"</tr></table>";
}

}

function getCatPro(){

	if(isset($_GET['cat'])){
		
		$cat_id = $_GET['cat'];

	global $con; 
	
	$get_cat_pro = "select * from products where product_cat='$cat_id'";

	$run_cat_pro = mysqli_query($con, $get_cat_pro); 
	
	$count_cats = mysqli_num_rows($run_cat_pro);
	
	if($count_cats==0){
	
	echo "<h2 style='padding:20px;'>No products where found in this category!</h2>";
	
	}
		$i=1; 
	echo "<table border='1' cellpadding='2'>
					<tr>";
	while($row_cat_pro=mysqli_fetch_array($run_cat_pro)){
	
		$pro_id = $row_cat_pro['product_id'];
		$pro_cat = $row_cat_pro['product_cat'];
		$pro_brand = $row_cat_pro['product_brand'];
		$pro_title = $row_cat_pro['product_title'];
		$pro_image = $row_cat_pro['product_image'];
	
		echo " <td width='220' height='120' style='padding:10px;'>
		<h3 style='height:50'>$pro_title</h3>
		<img src='../admin_area/product_images/$pro_image' width='180' height='180'/>
		<form action='view_favorites.php?pro_id=$pro_id' method='post'>
		<input type='submit' value='Add to favorites' name='vfav'>
		</form>
		<form action='all_rfq.php?prod_id=$pro_id' method='post'>
		<input type='submit' value='Add to RFQ' name='cart'>
		</form>
		<a href='details.php?pro_id=$pro_id' style='float:left;'>Details |</a>
		<a href='logon_success.php?pro_id=$pro_id' style='float:left;'>Back |</a>
		<a href='Tell_friend.php?pro_id=$pro_id' style='float:left;'>Tell To Friend |</a>
		
		</td>";
			if($i%3==0)
			 echo"</tr><tr>";
			$i++;
		}
	}
echo	"</tr></table>";
}
	





function getBrandPro(){

	if(isset($_GET['brand'])){
		
		$brand_id = $_GET['brand'];

	global $con; 
	
	$get_brand_pro = "select * from products where product_brand='$brand_id'";

	$run_brand_pro = mysqli_query($con, $get_brand_pro); 
	
	$count_brands = mysqli_num_rows($run_brand_pro);
	
	if($count_brands==0){
	
	echo "<h2 style='padding:20px;'>No products where found associated with this brand!!</h2>";
	
	}
	
	while($row_brand_pro=mysqli_fetch_array($run_brand_pro)){
	
		$pro_id = $row_brand_pro['product_id'];
		$pro_cat = $row_brand_pro['product_cat'];
		$pro_brand = $row_brand_pro['product_brand'];
		$pro_title = $row_brand_pro['product_title'];
		$pro_price = $row_brand_pro['product_price'];
		$pro_image = $row_brand_pro['product_image'];
	
		echo "
				<div id='single_product'>
				
					<h3>$pro_title</h3>
					
					<img src='admin_area/product_images/$pro_image' width='180' height='180' />
					
					<p></p>
					
					<a href='details.php?pro_id=$pro_id' style='float:left;'>Details</a>
					
					<a href='all_products.php?pro_id=$pro_id'><button style='float:right'>Add 3</button></a>
				
				</div>
		
		";
		
	
	}
	
}
}


?>