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
<h1>Cpi / Spi Calculation</h1>
<form action="grrecords.php" method="post">
<div style="padding: 10px">
<input type="checkbox" id="Cpi" name="Cpi" value="Cpi" onclick="functions(name)">
  <label style="height:50px; width:300px;font-size:16pt;" for="vehicle2"><b> Cpi</b></label>
  <input type="checkbox" id="Spi" name="Spi" value="Spi" onclick="functions(name)">
  <label style="height:50px; width:300px;font-size:16pt;"><b> Spi</b></label>
  </div>
  <br>
  </div>
<div style="padding: 10px">
    <form id="range">
    <tr>
    
    <td>
    
    <input class="space" type="text" name="start" placeholder="Starting Roll Number" style="height: 50px; width: 200px">
    </td>
    
    
    <td>
    
    <input class="space" type="text" name="end" placeholder="Ending Roll Number" style="height: 50px; width: 200px">
    </td>
    
    </tr>
    

</div>
  <div id="spi" style="padding:10px; display:block ">
  <input placeholder="Year"type="text" id="fname" name="year">
  <label >Semester</label>
  <select  id="finetype" name="sem">
    <option value=""  disabled>Semester</option>
    <option value="winter">winter</option>
    <option value="monsoon">monsoon</option>
    </select>
    </div>
    <div style="padding:10px ">
  <input  type="submit" value="Get Records">
  </div>
  </form>
  
</form>
</body>
<script>

var a =true;
function functions(name){
if(name=="Cpi"){
    document.getElementById("Spi").checked = false;
    document.getElementById("spi").style.display="none";

}
else{
    document.getElementById("Cpi").checked = false;
    document.getElementById("spi").style.display="block";
}
}

</script>
</html>