<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
    exit();
}
else{
    if(($_COOKIE["role"]=="admin") && ($_COOKIE["role"]=="staff") ){
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
<style>
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
<?php
require 'navigation.php';
echo $nav;
echo $script;
?>
<body>
<h1>Upload Excel File</h1> 
<form action="loadgrades.php"name="frmExcelImport" id="frmExcelImport" enctype="multipart/form-data" method="post">
  <input width="48" height="48" style="height:50px; width:300px;font-size:14pt;" type="text" placeholder="Course Number(Ex:EC102)" id="cn" name="course">
  <input width="48" height="48" style="height:50px; width:300px;font-size:14pt;" type="text" placeholder="Year" id="cn" name="year">
  <select  id="sem"style="height:50px; width:300px;font-size:14pt;" name="semester">
    <option value="" disable>Semester</option>
    <option value="Winter">Winter</option>
    <option value="Monsoon">Monsoon</option>
    <option value="Winter Supplementary">Winter Supplementary</option>
    <option value="Monsoon Supplementary">Monsoon Supplementary</option>
    </select>
   
            <input style="height:50px; width:300px;font-size:14pt;" type="file" name="file"
                    id="file" accept=".xls,.xlsx">
                <button style="height:50px; width:300px;font-size:14pt;" type="submit" id="submit" name="import"
                    class="btn-submit">Import</button>
            
</form>
</body>
</html>