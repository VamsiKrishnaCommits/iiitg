<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
    exit();
}
else{
    if($_COOKIE["role"]!="student"){
        header("location:auth.php");
        exit();
    }
}
?>

<?php
session_start();
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
    $roll=$_COOKIE["username"];
require 'need.php';
    $sql = "SELECT COUNT(CourseNumber)FROM courseregistrationsineverysemester WHERE RollNo = $roll ";
   $resul= mysqli_query($connect, $sql);
    if (    $row = mysqli_fetch_array($resul)    ) {
      if($row[0]!=0){
        $sql = " DELETE FROM courseregistrationsineverysemester WHERE RollNo=$roll";
        $resul= mysqli_query($connect, $sql);
      }
    } else {
      }

$extracoursetype="coursetype";
$extracoursename="coursename";
$count=1;

while(isset($_POST[strval($count).$extracoursename]) && isset($_POST[strval($count).$extracoursetype]) && $_POST[strval($count).$extracoursename]!="" && $_POST[strval($count).$extracoursetype]!=""){
 
  $course=$_POST[(strval($count)).$extracoursename];
  $type=$_POST[(strval($count)).$extracoursetype];
  $sql = "INSERT INTO courseregistrationsineverysemester (Year, Semester, CourseNumber,CourseType,RollNo,Approved)
     VALUES (2020, 'Winter', '$course','$type',$roll+0,'Pending')";
     if (mysqli_query($connect, $sql)) {
      unset($_POST[(strval($count)).$extracoursename]);
      unset($_POST[(strval($count)).$extracoursetype]);
       } else {
       }  
   $count++;
 }
foreach ($_POST as $key => $val)
{
    if($val!="Electives" && $key!="electivesel"){
    $sql = "INSERT INTO courseregistrationsineverysemester (Year, Semester, CourseNumber,CourseType,RollNo,Approved)
    VALUES (2020, 'Winter', '$key','$val',$roll+0,'Pending')";
    if (mysqli_query($connect, $sql)) {
      } else {
      }
    }
}
if(isset($_POST["Electives"])){
  if(isset($_POST["electivesel"])){
    $course=$_POST["electivesel"];
if($course!=""){
$sql = "INSERT INTO courseregistrationsineverysemester (Year, Semester, CourseNumber,CourseType,RollNo,Approved)
    VALUES (2020, 'Winter', '$course','Elective',$roll+0,'Pending')";
    if (mysqli_query($connect, $sql)) {
      } else {
      }  
  }
}
}
echo '<html>
<head>
  <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
</head>
  <style>
    body {
      text-align: center;
      padding: 40px 0;
      background: #EBF0F5;
    }
      h1 {
        color: #88B04B;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-weight: 900;
        font-size: 40px;
        margin-bottom: 10px;
      }
      p {
        color: #404F5E;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-size:20px;
        margin: 0;
      }
    i {
      color: #9ABC66;
      font-size: 100px;
      line-height: 200px;
      margin-left:-15px;
    }
    .card {
      background: white;
      padding: 60px;
      border-radius: 4px;
      box-shadow: 0 2px 3px #C8D0D8;
      display: inline-block;
      margin: 0 auto;
    }
  </style>
  <body>
    <div class="card">
    <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
      <i class="checkmark">✓</i>
    </div>
      <h1>Success</h1> 
      <p>We received your registration<br/> We will notify you about the status of registration</p>
    </div>
  </body>
</html>';

    ?>
</body>
</html>