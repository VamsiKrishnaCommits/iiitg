<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
}
else{
    if(($_COOKIE["role"]!="admin") && ($_COOKIE["role"]!="staff") ){
        header("location:auth.php");
    }
}
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<style>
.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}
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


.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
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
.space{
  padding :10px 10px 10px 10px ;
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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approve Registration</title>
</head>
<body>
<?php
require 'navigation.php';
echo $nav;
echo $script;

?>
<div class="space">
    <form id="range">
    <tr>
    
    <td>
    
    <input class="space" type="text" name="start" placeholder="Starting Roll Number" style="height: 50px; width: 200px">
    </td>
    
    
    <td>
    
    <input class="space" type="text" name="end" placeholder="Ending Roll Number" style="height: 50px; width: 200px">
    </td>
    
    </tr>
    
</form>
</div>
<div class="space">
<button  onclick="trigger()">Show Records</button>
</div>
<div id="yo">
</div>
<script>	
		function trigger(){
        $.ajax({
			url:"getrecords.php",
			method:"POST",
			data:$('#range').serialize(),
			success:function(data)
			{
                $('#yo').html(data);
            }
		});
        }

</script>
</body>
</html>