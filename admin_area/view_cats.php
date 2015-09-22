
<table width="795" align="center" bgcolor="pink"> 

	
	<tr align="center">
		<td colspan="6"><h2>View All Categories Here</h2></td>
	</tr>
	 <form method="post" enctype="multipart/form-data">
<input  name="search" type="text" placeholder="search by Category name"/>
<input name="btn" type="submit" value="Search" />
	</form> 
	<tr align="center" bgcolor="skyblue">
		<th>Category ID</th>
		<th>Category Title</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<?php 
	include("includes/db.php");
	if(isset($_POST['btn'])){
		
		$search=$_POST['search'];
	$get_cat = "select * from categories where cat_title = '$search'";
	}else{
		
			$get_cat = "select * from categories";

		}
	$run_cat = mysqli_query($con, $get_cat); 
	
	$i = 0;
	
	while ($row_cat=mysqli_fetch_array($run_cat)){
		
		$cat_id = $row_cat['cat_id'];
		$cat_title = $row_cat['cat_title'];
		$i++;
	
	?>
	<tr align="center">
		<td><?php echo $i;?></td>
		<td><?php echo $cat_title;?></td>
		<td><a href="index.php?edit_cat=<?php echo $cat_id; ?>">Edit</a></td>
		<td><a href="delete_cat.php?delete_cat=<?php echo $cat_id;?>">Delete</a></td>
	
	</tr>
	<?php } ?>




</table>