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
<style>
div.a{
  padding: 20px;
  border: 1px solid #000000;
  width:50%;
  margin-left: auto;
  margin-right: auto;
}
</style>
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
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<?php
require 'navigation.php';
echo $nav;
echo $script;
?>
<body>
<h2>Import Excel File</h2>
    <div class="outer-container">
      <p class="a">  <form action="hosteldisp.php" method="post"
            name="frmExcelImport" id="frmExcelImport" enctype="multipart/form-data">
            <div>
                <label>Choose Excel
                    File</label> <input type="file" name="file"
                    id="file" accept=".xls,.xlsx">
                <button type="submit" id="submit" name="import"
                    class="btn-submit">Import</button>        
            </div>
        </form>
        </p>
        <div class="a"><p><b>The excel file you upload must have the format displayed below</b></p>
<picture>
  <img src="messdues.png"  width= "100%"style="width:auto;">
</picture>
</div>
</body>
</html>