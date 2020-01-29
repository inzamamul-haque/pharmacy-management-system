<?php

session_start();

if(!isset($_SESSION['user_session'])){

    header("location:index.php");
}

include("dbcon.php");

if(isset($_POST['submit'])){

$invoice_number= $_GET['invoice_number'];
$product =$_POST['product'];
$expire_date=$_POST['expire_date'];
$qty    = $_POST['qty'];
$discount   = $_POST['discount'];
$date   = $_POST['date'];

if($_POST['invoice_id']){
	$invoice_id   = $_POST['invoice_id'];
	$discount_invo   = $_POST['discount_invo'];
	$select_sql_invo= "SELECT * FROM on_hold where invoice_number = '$invoice_id'";
	$select_query_invo= mysqli_query($con,$select_sql_invo);
	while($row_invo = mysqli_fetch_array($select_query_invo)){
		$medicine_name =$row_invo['medicine_name'];
		$category      = $row_invo['category'];
		$qty_invo      = $row_invo['qty'];
        $type     = $row_invo['type'];
		$cost          = $row_invo['cost'];
		$expire_date_invo   = $row_invo['expire_date'];
		$actual   = $row_invo['amount'];

		$update_sql_invo="UPDATE stock SET used_quantity = used_quantity + '$qty_invo' , remain_quantity = remain_quantity - '$qty_invo' where medicine_name = '$medicine_name' and expire_date = '$expire_date_invo'";//*******UPDATING Stock if Sale Made **********
		
		$update_query_invo = mysqli_query($con,$update_sql_invo);

		$select_sql = "SELECT * FROM stock where medicine_name = '$medicine_name' and expire_date = '$expire_date_invo' ";

		$select_query = mysqli_query($con,$select_sql);

		while($row = mysqli_fetch_array($select_query)){

			  $quantity = $row['remain_quantity'];
			  $profit_price = $row['profit_price'];
		}
	   echo "<h1>....LOADING</h1>";

	   if($quantity <= 0){

	   	   $update_quantity_sql = "UPDATE stock set status =  'Unavailable' where medicine_name = '$medicine_name' and expire_date = '$expire_date_invo' ";//********Updating Unavailable if medicine_qty  is zero***********

	   	   $update_quantity_query = mysqli_query($con,$update_quantity_sql);
	   }
	   
	   $amount = $qty_invo*$cost;
	
		$final = $amount-$amount*($discount_invo/100);
		
		//$profit_amt = $profit_price*$qty_invo;
		
		$profit_amt = $final-$actual*$qty;
		
		$insert_sql_invo ="INSERT INTO on_hold values('','$invoice_number','$medicine_name','$category','$expire_date_invo','$qty_invo','$type','$cost','$amount','$final','$profit_amt','$date','$discount')";//*****INSERTING INTO on_HOLD TABLE*******

		$insert_query_invo = mysqli_query($con,$insert_sql_invo);

		if($insert_query_invo){

		 header("location:home.php?invoice_number=$invoice_number");
	  
		 // echo "<script type='text/javascript'>window.location.href = home.php?invoice_number=$invoice_number '</script>";
		}
	}
}

else{

$select_sql= "SELECT * FROM stock where medicine_name = '$product' and expire_date = '$expire_date'";

$select_query= mysqli_query($con,$select_sql);

	while($row = mysqli_fetch_array($select_query)){
		$medicine_name =$row['medicine_name'];
		$category      = $row['category'];
		$quantity      = $row['quantity'];
        $sell_type     = $row['sell_type'];
		$cost          = $row['selling_price'];
		$profit        = $row['profit_price'];
		$expire_date   = $row['expire_date'];
		$actual   = $row['actual_price'];

	}

	$update_sql="UPDATE stock SET used_quantity = used_quantity + '$qty' , remain_quantity = remain_quantity - '$qty' where medicine_name = '$product' and expire_date = '$expire_date'";//*******UPDATING Stock if Sale Made **********

	$update_query = mysqli_query($con,$update_sql);

	$select_sql = "SELECT * FROM stock where medicine_name = '$product' and expire_date = '$expire_date' ";

	$select_query = mysqli_query($con,$select_sql);

	while($row = mysqli_fetch_array($select_query)){

		  $quantity = $row['remain_quantity'];
	}
	   echo "<h1>....LOADING</h1>";

	   if($quantity <= 0){

	   	   $update_quantity_sql = "UPDATE stock set status =  'Unavailable' where medicine_name = '$product' and expire_date = '$expire_date' ";//********Updating Unavailable if medicine_qty  is zero***********

	   	   $update_quantity_query = mysqli_query($con,$update_quantity_sql);
	   }

	$amount = $qty*$cost;
	
	$final = $amount-$amount*($discount/100);
	
	//$profit_amt = $profit*$qty;
	
	$profit_amt = $final-$actual*$qty;

               $insert_sql ="INSERT INTO on_hold values('','$invoice_number','$medicine_name','$category','$expire_date','$qty','$sell_type','$cost','$amount','$final','$profit_amt','$date','$discount')";//*****INSERTING INTO on_HOLD TABLE*******

	$insert_query = mysqli_query($con,$insert_sql);

	if($insert_query){

     header("location:home.php?invoice_number=$invoice_number");
  
     // echo "<script type='text/javascript'>window.location.href = home.php?invoice_number=$invoice_number '</script>";
	}else{

	}

  }
}elseif(isset($_GET['order_id'])){
	$invoice_number= $_GET['invoice_number'];
	$order_id= $_GET['order_id'];
	$date= date("m/d/Y");
	$discount= 0;
	$select_sql_invo= "SELECT * FROM on_hold where invoice_number = '$order_id'";
	$select_query_invo= mysqli_query($con,$select_sql_invo);
	while($row_invo = mysqli_fetch_array($select_query_invo)){
		$medicine_name =$row_invo['medicine_name'];
		$category      = $row_invo['category'];
		$qty_invo      = $row_invo['qty'];
        $type     = $row_invo['type'];
		$cost          = $row_invo['cost'];
		$expire_date_invo   = $row_invo['expire_date'];
		$actual   = $row_invo['amount'];

		$update_sql_invo="UPDATE stock SET used_quantity = used_quantity + '$qty_invo' , remain_quantity = remain_quantity - '$qty_invo' where medicine_name = '$medicine_name' and expire_date = '$expire_date_invo'";//*******UPDATING Stock if Sale Made **********
		
		$update_query_invo = mysqli_query($con,$update_sql_invo);

		$select_sql = "SELECT * FROM stock where medicine_name = '$medicine_name' and expire_date = '$expire_date_invo' ";

		$select_query = mysqli_query($con,$select_sql);

		while($row = mysqli_fetch_array($select_query)){

			  $quantity = $row['remain_quantity'];
			  $profit_price = $row['profit_price'];
		}
	   echo "<h1>....LOADING</h1>";

	   if($quantity <= 0){

	   	   $update_quantity_sql = "UPDATE stock set status =  'Unavailable' where medicine_name = '$medicine_name' and expire_date = '$expire_date_invo' ";//********Updating Unavailable if medicine_qty  is zero***********

	   	   $update_quantity_query = mysqli_query($con,$update_quantity_sql);
	   }
	   
	   $amount = $qty_invo*$cost;
	
		$final = $amount-$amount*($discount_invo/100);
		
		//$profit_amt = $profit_price*$qty_invo;
		
		$profit_amt = $final-$actual*$qty;
		
		$insert_sql_invo ="INSERT INTO on_hold values('','$invoice_number','$medicine_name','$category','$expire_date_invo','$qty_invo','$type','$cost','$amount','$final','$profit_amt','$date','$discount')";//*****INSERTING INTO on_HOLD TABLE*******

		$insert_query_invo = mysqli_query($con,$insert_sql_invo);

		if($insert_query_invo){

		 header("location:home.php?invoice_number=$invoice_number");
	  
		 // echo "<script type='text/javascript'>window.location.href = home.php?invoice_number=$invoice_number '</script>";
		}
	}
}
?>