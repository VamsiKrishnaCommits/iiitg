<?php
error_reporting(0);
require('php-excel-reader/excel_reader2.php');
require('SpreadsheetReader.php');
require 'need.php';
$allowedFileType = [
    'application/vnd.ms-excel',
    'text/xls',
    'text/xlsx',
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
];
if (in_array($_FILES["file"]["type"],$allowedFileType)) {
    $finetypes=array("library","late registration","mess","hostel","disciplinary","partial payment");
    $feetype=array("tution","hostel rent","development","insurance","caution money refundable");
    if (mysqli_connect_errno()) {
        exit();
      }
    $targetPath = 'uploads/' . $_FILES['file']['name'];
    move_uploaded_file($_FILES['file']['tmp_name'], $targetPath);
    $Reader = new SpreadsheetReader($targetPath);
	foreach ($Reader as $Row)
	{
$sql = "INSERT INTO fee_and_fine( Date,RollNumber,TutionFee, HostelRent,MessAdvance,MessDues,Fines,CautionMoney)
VALUES (".$Row[0]. ", ".$Row[1].", ".$Row[2].", ".$Row[3].", ".$Row[4].", ".$Row[5].", ".$Row[6].", ".$Row[7].")";
$roll=$Row[1];
   if($result = mysqli_query($connect, $sql)){
  $fd=$Row[2]+$Row[3]+$Row[7];
  $find=$Row[6];
  $md=$Row[4]+$Row[5];
  $sql1 = "UPDATE studentdues SET MessDues=MessDues-$md,FeesDues=FeesDues-$fd,FinesDues=FinesDues-$find WHERE RollNumber= $roll";
if(mysqli_query($connect, $sql1)) {
} else {
}
    } 
    else {
    }
 
  }
  if(mysqli_query($connect, $sql1)) {
    echo "Records updated successfully";
  } else {
    echo "Somethings wrong with the format you uploaded";
  }
   }
   else{

    echo "Something is wrong with the format you uploaded";

   }
  

?>