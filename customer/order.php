 <?php
 include("functions/functions.php");
 ob_start();
						$c_id = $_GET['c_id'];
						 $sel_c ="select * from cart where c_id = $c_id";
						$run_c = mysqli_query($con, $sel_c);
						while($row_data = mysqli_fetch_array($run_c))
						 {
						 $date=date("y-m-d");
						 $cart_id=$row_data['cart_id']; 
						 $c_id=$row_data['c_id'];
						 $p_id=$row_data['p_id'];
						 $qty=$row_data['qty'];
						  $q="INSERT INTO orders (c_id,p_id,qty,status_order,order_date)
					VALUES ('$c_id','$p_id','$qty','in progress','$date')";
					 mysqli_query($con,$q);
					  $res="DELETE FROM cart WHERE c_id ='$c_id'";
			                   mysqli_query($con,$res);
							
												  }?> 
                                                   <script>
							window.location.replace("my_orders.php");
</script>