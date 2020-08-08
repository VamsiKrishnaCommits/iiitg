<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
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
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>
<?php
require 'need.php';
echo "<button id='exp'>Export</button>";
if(isset($_POST["Cpi"])){
    echo "<table id='customers'><tr><th>RollNumber</th><th>Cpi</th></tr>";
    $start=$_POST["start"];
    $end=$_POST["end"];
    for($i=$start;$i<=$end;$i++){
    echo "<tr><td>$i</td>";                                                                         
    $sql="SELECT * FROM gradeinformationsofstudents WHERE RollNumber=$i AND Grade != 0 ";
    $result=mysqli_query($connect,$sql);
    $creditcount=0;
    $gradecredit=0;
    while($row=mysqli_fetch_array($result)){
    $coursenumber="'".$row[3]."'";
    $sql="SELECT Credits FROM coursedetails WHERE CourseNumber=$coursenumber ";
    $result1=mysqli_query($connect,$sql);
    while($r=mysqli_fetch_array($result1)){
        $creditcount=$creditcount+$r[0];
        $gradecredit=$gradecredit+($r[0] * $row[4]);
    }
    }
    $sql="SELECT * FROM gradeinformationsofstudents WHERE RollNumber=$i AND Grade = 0 AND (Semester= 'Winter' OR Semester='Monsoon')";
    $result=mysqli_query($connect,$sql);
    while($row=mysqli_fetch_array($result)){
        $coursenumber=  $row[5]!="-" ?   "'".$row[3]."'" : "'".$row[5]."'" ;
        
        $sql="SELECT * FROM gradeinformationsofstudents WHERE RollNumber=$i AND CourseNumber = $coursenumber ";
        $result1=mysqli_query($connect,$sql);
        $count=0;
        while($r=mysqli_fetch_array($result1)){
            if( $r[4]!=0  ){
                $count++;
            }
        }   
        if($count==0){
            $sql="SELECT Credits FROM coursedetails WHERE CourseNumber=$coursenumber ";
            $result1=mysqli_query($connect,$sql);
            while($r=mysqli_fetch_array($result1)){
                $creditcount=$creditcount+$r[0];
                        }  
        }      
        }
    if($creditcount!=0)
     echo "<td>". $gradecredit/$creditcount."</td></tr>";
    } 
    echo "</table>";
}
if(isset($_POST["Spi"])){
    echo "<table id='customers'><tr><th>RollNumber</th><th>Spi</th></tr>";
$start=$_POST["start"];
$end=$_POST["end"];
$year=$_POST["year"];
$sem="'".$_POST["sem"]."'";

for($i=$start;$i<=$end;$i++){
    echo "<tr><td>$start</td>";
$sql="SELECT * FROM gradeinformationsofstudents WHERE RollNumber=$i AND Year=$year AND Semester=$sem";
$result=mysqli_query($connect,$sql);
$creditcount=0;
$gradecredit=0;
while($row=mysqli_fetch_array($result)){
$coursenumber="'".$row[3]."'";
$sql="SELECT Credits FROM coursedetails WHERE CourseNumber=$coursenumber ";
$result1=mysqli_query($connect,$sql);
while($r=mysqli_fetch_array($result1)){
    $creditcount=$creditcount+$r[0];
    $gradecredit=$gradecredit+($r[0] * $row[4]);
}
}
if($creditcount!=0)
 echo "<td>". $gradecredit/$creditcount."</td></tr>";
} 
echo "</table>";
}
?>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>
<script>
$("#exp").click(function(){
  $("#customers").table2excel({
    // exclude CSS class
    exclude:".noExl",
    name:"Worksheet Name",
    filename:"Student Info",//do not include extension
    fileext:".xls" // file extension
  });

});


</script>
</body>



</html>


