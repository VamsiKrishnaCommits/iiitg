<?php
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
    $targetPath = 'uploads/' . $_FILES['file']['name'];
    move_uploaded_file($_FILES['file']['tmp_name'], $targetPath);
    $Reader = new SpreadsheetReader($targetPath);
    $year=$_POST["year"];
    $course=$_POST["course"];
    $semester=$_POST["semester"];
	foreach ($Reader as $Row)
	{
if( !empty($Row[0]) || !empty($Row[1]) ){
$sql = "INSERT INTO gradeinformationsofstudents VALUES (".$Row[0]. ", ".$year.", '".$semester."', '".$course."', ".$Row[1].",'"."-"."')";
echo $sql;
if (!mysqli_query($connect,$sql)) {
    echo("Error description: " . mysqli_error($connect));
  }
}
else{
}
  }
  echo "Successfully updated";
}
?>