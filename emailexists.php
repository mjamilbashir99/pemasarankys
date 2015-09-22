<?php
include("includes/db.php");
$res = 0;
if(isset($_POST['email']))
{
    $customer_email = $_POST['email'];
	$sql = "SELECT customer_email FROM customers WHERE customer_email='".$customer_email."'"; // Username must enclosed in two quotations
    $query = mysqli_query($con, $sql);
    if(mysqli_num_rows($query) == 0)
    {
        $res =0;
    }
    else
    {
        $res =1;
    }
	echo json_encode(array('status'=>$res));
}
   exit;
?>