<?php
require('php-excel-reader/excel_reader2.php');
require('SpreadsheetReader.php');
error_reporting(0);
require 'need.php';
$allowedFileType = [
    'application/vnd.ms-excel',
    'text/xls',
    'text/xlsx',
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
];
        $targetPath = 'uploads/' . $_FILES['file']['name'];
    move_uploaded_file($_FILES['file']['tmp_name'], $targetPath);
    $Reader = new SpreadsheetReader($targetPath);
	foreach ($Reader as $Row)
	{
   $result = mysqli_query($connect, $sql2);  
   while($row = mysqli_fetch_array($result))  
   {  
    $md=$row["MessDues"];
    $md=$md+$Row[1];
    $sql1 = "UPDATE studentdues SET MessDues=$md WHERE RollNumber=$Row[0]";

    }
    if (mysqli_query($connect, $sql1)) {
      echo "Record updated successfully";
    } else {
    echo "Something is wrong with the format you uploaded";
    exit();
    }
 }  
?>