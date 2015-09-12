<?php 
include("includes/db.php");
	if(isset($_POST['update'])){
		
			$p_prices=$_POST['p_price'];
            $ods_id=$_POST['ods_id'];
			$order_no=$_POST['order_no'];
			$i=0;
			foreach($ods_id as $od_id)
			{
				$p_price=$p_prices[$i];
	         	$i++;
		        $q="UPDATE order_details SET p_price  = '$p_price'  where ods_id= '$od_id'";
		    	mysqli_query($con,$q);
				 $q="UPDATE orders SET status_order  = 'received_quotations'  where order_id= '$order_no'";
		    	mysqli_query($con,$q);
			}	
		   }
?>
				<script>
              		window.location.replace("index.php?rfq");
                </script>