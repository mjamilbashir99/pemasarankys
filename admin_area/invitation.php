<div align="center" style="background-color: pink">
<form action="" method="post" enctype="multipart/form-data">
 <table> 

	
	<tr align="center">
		<td colspan="6"><h2>Greeting invitations </h2></td>
	</tr>
    
    <tr> <td>Name</td><td><input type="text" name="fname"/></td></tr>

    <tr> <td>Email Addres</td><td><input type="text" name="email"/></td></tr>

    <tr> <td>Subject</td><td><input type="text" name="subject"/></td></tr>

    <tr> <td>Message</td><td><input type="text"  style="height:90px; width:173px" name="message"/></td></tr>
    <tr> <td>Attached</td><td><input type="file" name="file" /></td></tr>
 <tr> <td></td><td align="center"><input type="submit" name="invation" value="Send"/></td></tr>
	
</table>
</form>
<?php
include"PHPMailer/class.phpmailer.php";
	if(isset($_POST['invation'])){
          $email = new PHPMailer();     
		echo $image_name 	= $_FILES['image']['name'];
		echo $image_tmp 	= $_FILES['image']['tmp_name'];
		exit();
		 $path_file= move_uploaded_file($image_tmp,"invitation_images/$image_name");
	
	
	
		$email->From      ='info@Pemasaran.KYS.com';
		$email->FromName  = $_POST['fname'];
		$email->Subject   = $_POST['subject'];
		$email->Body      = $_POST['message']; 
		$email->AddAddress($_POST['email']);

		$file_to_attach = $image_tmp;
		
		$email->AddAttachment($file_to_attach ,$image_name);
		
		if(!$email->Send())
{
   echo "Message could not be sent. <p>";
   echo "Mailer Error: " . $email->ErrorInfo;
 
}
				
		
		 /*$headers=$_POST['fname'];
		 $image 	= $_FILES['image']['name'];
		 $image_tmp 	= $_FILES['c_image']['tmp_name'];
		 move_uploaded_file($c_image_tmp,"customer_images/$c_image");
		 $subject=$_POST['subject'];
		 $message_text=$_POST['message']; 
		 $to=$_POST['email'];
		 $message = "<html> 
										<body> 
												<p>$message_text</p>
											    <p>Pemasaran KYS Team</p> 
										</body> 
										</html> ";

										$message .= $attachment;
		 $m=mail($to,$subject,$message,$headers);
		 
		 if($m)
		 {
			echo'Check your inbox in mail';
		 }
		 else
		 {
		   echo'mail is not send';
		 }	
		
	
*/

}

?>


</div>