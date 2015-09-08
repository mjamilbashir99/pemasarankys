<div align="center" style="background-color: pink">
 <table width="760" bgcolor="pink" > 

	

	
	<tr align="center" bgcolor="skyblue">
	
		
		<th>Product (S)</th>
		<th>Quantity</th>
		<th>Price</th>
		<th><input type="submit" value="updatePrice"/> </th>
        <br/>
		<th><input type="submit" value="ReplyRFQ"/> </th>
	
   
	</tr>
	<?php 
	include("includes/db.php");
	
	$get_pro = "select * from products";
	
	$run_pro = mysqli_query($con, $get_pro); 
	
	$i = 0;
	
	while ($row_pro=mysqli_fetch_array($run_pro)){
		
        $pro_id = $row_pro['product_id'];
		$pro_title = $row_pro['product_title'];
		$pro_image = $row_pro['product_image'];
		$pro_price = $row_pro['product_price'];
		$i++;
	
	?>
	<tr align="center">
		<td><?php echo $pro_id;?></td>
        
		<td>
		<?php echo $pro_title;?>
       <br/>
        
        <img src="product_images/<?php echo $pro_image;?>" width="60" height="60"/>
             <br/>
Price: <?php echo $pro_price;?>
        <hr/>
        </td>
			<td>
        </td>
	
    <td>
    
    
    </td>
    <td> 
    
    
    
    </td>
    
	</tr>
	<?php } ?>
</table>
 
</div>