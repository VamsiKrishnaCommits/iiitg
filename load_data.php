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
 require 'need.php';
 $output = '<table id="customers">
 <tr>';  
           $sql = "SELECT * FROM general";  
            $a=json_decode($_POST["list"],true);
           for($i=0;$i<15;$i++){
               if($a[$i]["checked"]=="check")
    $output= $output.'<th>'.$a[$i]["name"].'</th>';      
}
$output=$output.'</tr>';
      $result = mysqli_query($connect, $sql);  
      while($row = mysqli_fetch_array($result))  
      {  
          if(($row["StudentProgramme"]==$_POST["stream"] || $_POST["stream"]=="all") && ($row["StudentDepartment"]==$_POST["department"] || $_POST["department"]=="all")&&($row["Gender"]==$_POST["gender"] || $_POST["gender"]=="all") && ($row["Category"]==$_POST["category"] || $_POST["category"]=="all")){
          for($i=0;$i<15;$i++){
            if($a[$i]["checked"]=="check")
 $output= $output.'<td>'.$row[$a[$i]["name"]].'</td>';      
}
        $output=$output.'</tr>';   
       } 
    }
    $output=$output.'</table>';   
    echo $output;
 ?>