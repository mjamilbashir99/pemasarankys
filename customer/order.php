 <?php
 include("functions/functions.php");
 ob_start();
						$c_id = $_GET['c_id'];
						$date=time();
						$q="INSERT INTO orders (c_id,status_order,order_date)
						VALUES ('$c_id','submit_rfq','$date')";
						mysqli_query($con,$q);
						$last_id = mysqli_insert_id($con);
					
						$sel_c ="select * from cart where c_id = $c_id";
						$run_c = mysqli_query($con, $sel_c);
						//if($mysqli_num_rows($run_c)>=1){
						while($row_data = mysqli_fetch_array($run_c))
						 {
						$last_id;
						$p_id=$row_data['p_id']; 
						$c_id=$row_data['c_id'];
						$qty=$row_data['qty'];
						$query="INSERT INTO order_details (order_no,p_id,p_price,c_id,qty)
						VALUES ('$last_id','$p_id','0','$c_id','$qty')";
						mysqli_query($con,$query);
						$delete_customer = "delete from cart where c_id='$c_id'";
	                    $run_customer = mysqli_query($con,$delete_customer); 
						  }
						
												  ?> 
                                                   <script>
							window.location.replace("logon_success.php");
</script>