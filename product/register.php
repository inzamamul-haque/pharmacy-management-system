<?php

   include("../dbcon.php");


	session_start();

	if(!isset($_SESSION['user_session'])){

	    header("location:index.php");
	}

$valid=0;

   if(isset($_POST['submit'])){//***INSERTING NEW  MEDICEINES******
$invoice_number = $_GET['invoice_number'];
	   echo "<h1>....LOADING</h1>";
$bar_code= $_POST['bar_code'];

$check_barcode="select bar_code from stock where bar_code='$bar_code'";
$bar=mysqli_query($con,$check_barcode);
$count=mysqli_num_rows($bar);
if($count>0){
	$valid=1;
	$m= "Duplicate Barcode ... Medicine Not Inserted";
	echo "<script type='text/javascript'>alert('$m');</script>";
}
else{
	$valid=0;
}

$med_name= $_POST['med_name'];  
$category= $_POST['category'];    
$quantity=  $_POST['quantity']; 
$reg_date = strtotime($_POST['reg_date']);
$new_reg_date = date('Y-m-d',$reg_date);
$exp_date= strtotime($_POST['exp_date']); 
$new_exp_date = date('Y-m-d',$exp_date);
$company =  $_POST['company']; 
$sell_type = $_POST['sell_type'];
$actual_price = $_POST['actual_price'];  
$selling_price = $_POST['selling_price'];
$profit_price = $_POST['profit_price'];
$status = "Available";

if($valid==0){
 $sql="INSERT INTO stock(bar_code,medicine_name, category, quantity,remain_quantity,act_remain_quantity, register_date, expire_date, company, sell_type , actual_price,selling_price, profit_price,status) 
 VALUES ('$bar_code','$med_name','$category','$quantity','$quantity','$quantity','$new_reg_date','$new_exp_date','$company','$sell_type','$actual_price','$selling_price','$profit_price','$status')";

   $result =mysqli_query($con,$sql);

   if($result){

   echo "<script type='text/javascript'>window.top.location='view.php?invoice_number=$invoice_number';</script>";
   }
}
else{
	echo "<script type='text/javascript'>window.top.location='view.php?invoice_number=$invoice_number';</script>";
}

}
 

?>