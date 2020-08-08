

<!DOCTYPE html>
<<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
}
else{
    if(($_COOKIE["role"]!="admin") && ($_COOKIE["role"]!="staff") ){
        header("location:auth.php");
    }
}
?>html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>


.vertical-center {
  margin: 20;
  -ms-transform: translateX(50%);
  transform: translateX(50%);
}

h1 {
  color:#0000ff;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #0000FF	;
  color: white;
}
</style>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
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
<?php
require 'navigation.php';
echo $nav;
echo $script;
?>
<body>

<?php   
require 'need.php';
 $a=array("Male","Female","General","OBC","OBC-NCL","SC","ST","Total");
 $b=array("Btech 2016","Btech 2016","Btech 2017","Btech 2017","Btech 2018","Btech 2018","Btech 2019","Btech 2019","Mtech 2018","Mtech 2018","Mtech 2019","Mtech 2019","PhD","PhD","PhD","PhD");
 $c=array("CSE","ECE","CSE","ECE","CSE","ECE","CSE","ECE","CSE","ECE","CSE","ECE","CSE","ECE","Mathematics","HSS");
$d=count($a);
$e=count($b);
$output = '<table id="customers">
<tr>'; 
$output= $output.'<th>'."         ".'</th>';      
for($i=0;$i<$d;$i++){
$output= $output.'<th>'.$a[$i].'</th>';      
}
$output=$output."</tr>";
for($i=0;$i<$e;$i++){
    $output=$output.'<tr>';   
    $output= $output.'<td>'.$b[$i].$c[$i].'</td>'; 
for($j=0;$j<$d;$j++){
    $sql = "SELECT * FROM general WHERE StudentProgramme='".$b[$i]."'" ."AND StudentDepartment='".$c[$i]."'"; 
    $result = mysqli_query($connect, $sql)   ;
  $f=array(0,0,0,0,0,0,0,0);
    while($row = mysqli_fetch_array($result))  
      {  
        if($row["Gender"]=="Male"){
          $f[0]++;
        }
        if($row["Gender"]=="Female"){
$f[1]++;
        }
        if($row["Category"]=="General"){
$f[2]++;
        }
        if($row["Category"]=="OBC"){
          $f[3]++;
                  }
                  if($row["Category"]=="OBC-NCL"){
                    $f[4]++;
                            }
                            if($row["Category"]=="SC"){
                              $f[5]++;
                                      }
                                      if($row["Category"]=="ST"){
                                        $f[6]++;
                                                }
        $f[7]++;
    }
    
    $output=$output.'<td>'.$f[$j].'</td>';
}
    $output=$output.'</tr>';   
}

$output=$output.'</table>';   
echo $output;
 ?>
  <div class="vertical-center">
    <button id="exp">Export Table</button>
  </div>
</body>
</html>
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