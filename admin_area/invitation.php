<div align="center" style="background-color: pink">
<form action="" method="post">
 <table> 

	
	<tr align="center">
		<td colspan="6"><h2>Greeting invitations </h2></td>
	</tr>
    
    <tr> <td>Name</td><td><input type="text" name="fname"/></td></tr>

    <tr> <td>Email Addres</td><td><input type="text" name="email"/></td></tr>

    <tr> <td>Subject</td><td><input type="text" name="subject"/></td></tr>

    <tr> <td>Message</td><td><input type="text"  style="height:90px; width:173px" name="message"/></td></tr>

    <tr> <td></td><td align="right"><input type="submit" name="invation" value="submit"  /></td></tr>

    <tr> <td>Attached</td><td><input type="file" value="submit" /></td></tr>

	
</table>
</form>
<?php
	if(isset($_POST['invation'])){
		 $headers=$_POST['fname'];
		 $subject=$_POST['subject'];
		 $message=$_POST['message']; 
		 $to=$_POST['email'];
		 $m=mail($to,$subject,$message,$headers);
		 if($m)
		 {
			echo'Check your inbox in mail';
		 }
		 else
		 {
		   echo'mail is not send';
		 }	
		
	}




?>


</div>