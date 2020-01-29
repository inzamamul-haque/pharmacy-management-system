
<?php

   include("dbcon.php");

session_start();

if(!isset($_SESSION['user_session'])){

    header("location:index.php");
}
   @$name=mysqli_real_escape_string($con,$_POST['name']);
   @$expire=mysqli_real_escape_string($con,$_POST['expire']);
   @$type_med=mysqli_real_escape_string($con,$_POST['type_med']);

   $query="SELECT * from stock where medicine_name = '$name' AND expire_date = '$expire' and status= 'Available'
   ";

   $result =mysqli_query($con,$query);

   $data= array();


   while($row = mysqli_fetch_array($result)){


   	$data [] = $row["bar_code"].",".$row['expire_date'].",(".$row['sell_type']."),".$row['remain_quantity']."";

   }
     echo json_encode($data);

?>