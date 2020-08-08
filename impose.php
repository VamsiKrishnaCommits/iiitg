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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
require 'need.php';
error_reporting(0);
$roll=$_POST["fname"];
$finetype=$_POST["finetype"];
$amount=$_POST["lname"];
$sql2 = "SELECT * FROM studentdues WHERE RollNumber=".$roll; 
$result = mysqli_query($connect, $sql2);  
if($row = mysqli_fetch_array($result) )  
{  
$md=$row["FinesDues"];
$md=$md+$amount;
$sql1 = "UPDATE studentdues SET FinesDues=$md WHERE RollNumber=$roll";
if (mysqli_query($connect, $sql1)) {
} else {
}
} 
else{
  $sql1 = "INSERT INTO studentdues values ($roll,0,0,$amount)";
  if (mysqli_query($connect, $sql1)) {
  } else {
  }
  } 
//////imposing fine starts
    $selectreq="SELECT * FROM fine WHERE RollNumber=$roll AND FineType='$finetype'";
    $i=0;
    $result1=  mysqli_query($connect,$selectreq);
       while( $row1=mysqli_fetch_array($result1)){
           $i++;
        if($row1["partial"]!="-"){
            $find1=$row1["partial"]+$_POST["lname"];
            $fineup = "UPDATE fine SET partial=$find1  WHERE RollNumber=$roll AND FineType='$finetype'";
        if (mysqli_query($connect, $fineup)) {
        } else {
        }
        }
        else{
            $find1=$row1["FineAmount"]+$amount;
            $fineup = "UPDATE fine SET FineAmount=$find1 WHERE RollNumber=$roll AND FineType='$finetype'";
        if (mysqli_query($connect, $fineup)) {
        } else {
        }
        }
    }    
    if($i==0){
        $paid="not paid";
        $sql = "INSERT INTO fine(RollNumber,FineType,FineAmount,partial, status)
        VALUES (".$roll.", '".$finetype."', ".$amount.", "."'-'".", "."'not paid'".")";
  $result= mysqli_query($connect, $sql);
      
    }
    ?>
</body>
</html>