 <?php
 
 	include("includes/db.php");
	$order_id=$_GET['order_id'];
  $q="UPDATE orders SET status_order  = 'issue_po'  where order_id= '$order_id'";
		    	mysqli_query($con,$q);
				?>
				<script>
              		window.location.replace("received_quotations.php");
                </script>