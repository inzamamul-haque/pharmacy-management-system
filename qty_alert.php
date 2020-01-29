<?php

session_start();

if(!isset($_SESSION['user_session'])){

    header("location:index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
<script type="text/javascript">

function med_name() {//***Search For Medicine *****
  var input, filter, table, tr, td, i;
  input = document.getElementById("name_med");
  filter = input.value.toUpperCase();
  table = document.getElementById("table2");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=no,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=700, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("out_of_stock").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('</head><body onLoad="self.print()" style="left:100px; font-size:11px; font-family:arial; font-weight:normal;"><style>table.table.table-bordered { width: -webkit-fill-available; width: -moz-available; text-align: center;}h1.stock_out_header {text-align: center; color: purple;}</style><h1 class="stock_out_header">Medicine Out of Stock</h1>');          
   docprint.document.write(content_vlue); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>
</head>
<body>
     
    <div class="stock" >

    	  <font size="5" color="purple">Medicine Out of Stock</font><hr>

<input type="text"  id="name_med" size="4"  onkeyup="med_name()" placeholder="Search for Medicine names.." title="Type in a name">
 <div style="overflow-x:auto; overflow-y: auto; height: 150px;" id="out_of_stock">

    	  <table class="table table-bordered" id="table2"> 	  	
    	  	<tr>
    	  		<th>Medicine</th>
    	     	<th>Avai Qty</th>
    	  		<th>Expire Date</th>
    	  		<th>Cost</th>

    	  	</tr>

    	  	  <?php
          include("dbcon.php");
    	  $quantity = "50";
          $select_sql= "SELECT * FROM stock where remain_quantity <= '$quantity' and status = 'Available'";
          $result = mysqli_query($con,$select_sql);

          while ($row = mysqli_fetch_array($result)) :
          	   
    	  ?>
    	  	<tr>
    	  		<td><?php echo $row['medicine_name']?></td>
    	  		<td><font color="red"><?php echo $row['remain_quantity']."(".$row['sell_type'].")"?></font></td>
    	  		<td><?php echo $row['expire_date']?></td>
    	  		<td><?php echo $row['actual_price']?></td> 

    	  	</tr>
    	  <?php endwhile;?>
    	  	

    	  </table>

</div>    	

<a href="javascript:Clickheretoprint()" class="btn btn-primary" style="float: right;"> Print</a>


    </div><br>
     

</body>
</html>
