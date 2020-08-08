<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
    exit();
}
else{
    if(($_COOKIE["role"]!="admin") && ($_COOKIE["role"]!="staff") ){
        header("location:auth.php");
        exit();
    }
}
?>
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

    $targetPath = 'uploads/' . $_FILES['file']['name'];
    move_uploaded_file($_FILES['file']['tmp_name'], $targetPath);
    $Reader = new SpreadsheetReader($targetPath);
    $sql="TRUNCATE TABLE fees_information";
    $result=mysqli_query($connect,$sql);
    $countt=0;
	foreach ($Reader as $Row)
	{
        $countt++;
        $query=strval($Row[3]-2000);
              $sql2 = "INSERT INTO fees_information values( "."'"  .$Row[0]."'".','."'".$Row[1]."'".','."'".$Row[2]."'".','."'".$Row[3]."'".','."'".$Row[4]."'".','.$Row[5] .")"; 
              $result=mysqli_query($connect,$sql2);
switch($Row[2]){
    case 'Btech':
        $query=$query."01";
        break;
        case 'Mtech':
        $query=$query."02";
            break;
case 'PhD':
    $query=$query."03";
    break;
        }
        $min=intval($query)*1000;
        $max=(intval($query)+1)*1000;
       $sql5="SELECT * FROM general WHERE RollNumber < $max AND RollNumber > $min";
       $result=mysqli_query($connect,$sql5);
    if(!$result){
    }
    $count=0;
while($row=mysqli_fetch_array($result)){
    $count++;
    $sql3="INSERT into studentdues values(". $row[0].",0,". $Row[5].",0)";
    $result2=mysqli_query($connect,$sql3);
    if($result2==null){
      $sql3="UPDATE studentdues SET FeesDues= " ."FeesDues+".$Row[5]." WHERE RollNumber=".$row[0]; 
      $result2=mysqli_query($connect,$sql3);
    }
} 

 }  
 if($countt==0){
    echo "Something is wrong with the format you uploaded";
}     
else{
    echo "Records updated successfully";
}
?>