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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<!DOCTYPE html>

<html lang="en">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  width:50%;
}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
require 'need.php';
$roll= $_POST["roll"];
$approve="'"."approve"."'";
$reject="'"."rejected"."'";
$count=0;
     $sql="SELECT general.RollNumber,general.FirstName,general.LastName, courseregistrationsineverysemester.CourseNumber,courseregistrationsineverysemester.CourseType
     FROM general
     LEFT JOIN courseregistrationsineverysemester ON general.RollNumber= courseregistrationsineverysemester.RollNo WHERE general.RollNumber =$roll " ;
         $result = mysqli_query($connect, $sql);  
         while($row = mysqli_fetch_array($result))  
         {
             if($count==0){
                echo "<table class='table'><td>".$row[0]."</td><td>".$row[1]."</td><td>".$row[2]."</td><td>".'<button onclick="approve('.$roll.','.$approve.'  ) " >Approve</button></td><td><button  onclick="approve('.$roll.','.$reject.')">Reject</button></td></table><br/>'; 
             }  
           echo "<table class ='table'><tr><td>".$row[3]."</td><td>".$row[4].'</td></table><br/>';
           $count++;
        }
        
?>
</body>

</html>

<script>
function approve(num , message){

    $.ajax({  
                url:"approve.php",  
                method:"POST",  
                data:{roll:num,
                mess:message
                },  
                success:function(data){ 
      alert(message=="approve" ? "Approved" : "Rejected");
      window.history.back();
                }  
           });  
 
}


</script>