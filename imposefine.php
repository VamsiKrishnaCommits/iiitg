<!DOCTYPE html>
<html>
<body>
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
<h1>Impose Fine</h1>
<form action="impose.php" method="post">
  <label for="fname">Roll Number</label>
  <input type="text" id="fname" name="fname">
  <select  id="finetype" name="finetype" onchange="strea()">
    <option value="" disable>FineType</option>
    <option value="library">library</option>
    <option value="late registration">late registration</option>
    <option value="mess">mess</option>
    <option value="hostel">hostel</option>
    <option value="disciplinary">disciplinary</option>
    </select>
  <label for="lname">Fine</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Impose Fine">
</form>
</body>
</html>