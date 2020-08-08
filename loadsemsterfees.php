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
<style>

p.a {
  white-space: nowrap;
}
p.b {
  white-space: normal;
}
p.c {
  white-space: pre;
}
</style>
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
<h2>Import Excel File into MySQL Database using PHP</h2>
    <div class="outer-container">
        <p class="b"><form action="loadandupdate.php" method="post"
            name="frmExcelImport" id="frmExcelImport" enctype="multipart/form-data">
            <div>
                <label>Choose Excel
                    File</label> <input type="file" name="file"
                    id="file" accept=".xls,.xlsx">
                <button type="submit" id="submit" name="import"
                    class="btn-submit">Import</button>        
            </div>
        </form></p>
</body>
</html>