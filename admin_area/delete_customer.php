
<table width="795" align="center" bgcolor="pink"> 

	
	<tr align="center">
		<td colspan="6"><h2>View All Deleted Customers </h2></td>
	</tr>
	
	<tr align="center" bgcolor="skyblue">
		<th>S.N</th>
		<th>Name</th>
		<th>Email</th>
		<th>Image</th>
		<th>Delete</th>
        <th>Status</th>
	</tr>
	<?php 
	include("includes/db.php");
	
	$get_c = "select * from customers where is_delete=1";
	
	$run_c = mysqli_query($con, $get_c); 
	
	$i = 0;
	
	while ($row_c=mysqli_fetch_array($run_c)){
		
		$c_id = $row_c['customer_id'];
		$c_name = $row_c['customer_name'];
		$c_email = $row_c['customer_email'];
		$c_image = $row_c['customer_image'];
		$staus = $row_c['status'];
		$i++;
	
	?>
	<tr align="center">
		<td><?php echo $i;?></td>
		<td><?php echo $c_name;?></td>
		<td><?php echo $c_email;?></td>
		<td><img src="../customer/customer_images/<?php echo $c_image;?>" width="50" height="50"/></td>
		<td><a href="delete_c.php?delete_c=<?php echo $c_id;?>&back=del">Delete</a></td>
        <td>
	<form action="cus_update.php?user_id=<?php echo $row_c['customer_id'];?>&back=del" method="post" enctype="multipart/form-data">
        <input type="hidden" name="customer_id" value="<?php echo $row_c['customer_id'];?>" />
        <select name="status">
        <?php if($staus==1){ ?>
        <option value="1" selected="selected">Active</option>
        <?php }else{?>
        <option value="1">Active</option>
         <?php }  if($staus==0){ ?>
        <option value="0" selected="selected">Deactive</option>
                <?php } else {?>
                 <option value="0">Deactive</option>
               <?php } ?>

        </select>
        <input name="submit" type="submit" value="Update" />
        </form></td>
	</tr>
	<?php } ?>




</table>