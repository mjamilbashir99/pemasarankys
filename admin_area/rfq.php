<?php 
	include("includes/db.php");?>
<div align="center" style="background-color: pink">
 <table width="760" bgcolor="pink" > 
 <form method="post" enctype="multipart/form-data">
<input name="search" type="text" placeholder="search by user name" />
<input name="btn" type="submit" value="Search" />
	</form>
    
<h4>View RFQ</h4>
	
	<tr align="center" bgcolor="skyblue">
		<th>Sr.</th>
        <th>Order Id</th>
		<th>User Name</th>
		<th>Order Status</th>
		<th>Action</th>
	</tr>
	<?php 
	if(isset($_POST['btn'])){
		
		$search=$_POST['search'];
		$get_pro = "SELECT c.*,o.*
		FROM orders as o
		JOIN customers as c
		on o.c_id=c.customer_id
		where o.status_order='submit_rfq' and customer_name = '$search'";
	}
	else{
		$get_pro = "SELECT c.*,o.*
		FROM orders as o
		JOIN customers as c
		on o.c_id=c.customer_id
		where o.status_order='submit_rfq'";
		}
	$run_pro = mysqli_query($con, $get_pro); 
	$i = 0;
	while ($row_pro=mysqli_fetch_array($run_pro)){
        $order_id = $row_pro['order_id'];
		$customer_name = $row_pro['customer_name'];
		$status_order = $row_pro['status_order'];
		
		$i++;
	?>
	<tr align="center">
		<td>
		   <?php echo $i;?>
        </td>
		<td>
		   <?php echo $order_id;?>
       </td>
       <td>
          <?php echo $customer_name;?>
        </td>
		
    <td> 
   <?php echo $status_order ?>
     
    </td>
    <td>
   
     <form method="post" action="rfq_update.php?order_id=<?php echo $row_pro['order_id']; ?>" enctype="multipart/form-data">
                                <input name="customer_name" type="hidden" value=" <?php echo $customer_name;?>">
                                <input type="submit" value="Update" />
								                                </form>
    
    </td>
	</tr>
	<?php } ?>
</table>
 
</div>