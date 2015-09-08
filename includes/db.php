<?php 
$host =$_SERVER['HTTP_HOST'];
if($host == "localhost")
{
	$con = mysqli_connect("localhost","root","","pemasmy12_rootdb");
}
else
{
	$con = mysqli_connect("localhost","pemasmy1_sundar","R@@tDb","pemasmy1_rootdb");
}
if (mysqli_connect_errno())
  {
  echo "The Connection was not established: " . mysqli_connect_error();
  }


?>