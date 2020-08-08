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
<style>
.button {
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

</style>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Information</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<body>
<?php
require 'navigation.php';
echo $nav;
echo $script;
?>
    <h3>
    <div id="data">  
    <select  id="stream"  onchange="strea()">
    <option value="" disable>All Streams</option>
    <option value="">Btech 2016</option>
    <option value="">Btech 2017</option>
    <option value="">Btech 2018</option>
    <option value="">Btech 2019</option>
    <option value="">Mtech 2016</option>
    <option value="">Mtech 2017</option>
    <option value="">Mtech 2018</option>
    <option value="">Mtech 2019</option>
    <option value="">PhD</option>
    </select>
    <select name="department" id="department"  onchange="department()">
    <option value="">All Departments</option>
    <option value="">CSE</option>
    <option value="">ECE</option>
    <option value="">HSS</option>
    <option value="">Mathematics</option>
    </select>
    <select name="course" id="course"  onchange="course()">
    <option value="">All Courses</option>
    <option value="">CS101</option>
    <option value="">EC101</option>
    <option value="">HSS101</option>
    <option value="">MA101</option>
    </select>
    <select name="brand" id="gender"  onchange="gender()">
    <option value=""> All Genders</option>
    <option value=""> Female</option>
    <option value=""> Male</option>
    </select>
    <select name="brand" id="category"  onchange="category()">
    <option value="">All Categories</option>
    <option value="">General</option>
    <option value="">OBC</option>
    <option value="">OBC-NCL</option>
    <option value="">SC</option>
    <option value="">ST</option>

    </select>
    <button class="button button2" onclick="clik()">Show Data</button>
    </div><br><br>
    <form >
    <div>
    <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; margin-bottom:20px; ">  
          <input type="checkbox" id="RollNumber" name="RollNumber" value="Bike" checked="checked"onclick="functions(id)" >
  <label for="vehicle1"> RollNumber</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; margin-bottom:20px; ">  
          <input type="checkbox" id="FirstName" name="FirstName" value="Car" onclick="functions(id)">
  <label for="vehicle2"> FirstName</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px;  margin-bottom:20px;">  
          <input type="checkbox" id="LastName" name="LastName" value="Boat"onclick="functions(id)">
  <label for="vehicle3"> LastName</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px;  margin-bottom:20px;">  
          <input type="checkbox" id="Address" name="Address" value="Bike"onclick="functions(id)">
  <label for="vehicle1"> Address</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px;  margin-bottom:20px;">  
          <input type="checkbox" id="PhoneNumber" name="PhoneNumber" value="Car"onclick="functions(id)">
  <label for="vehicle2"> PhoneNumber</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px;  margin-bottom:20px;">  
          
          <input type="checkbox" id="Email Address" name="Email Address" value="Boat"onclick="functions(id)">
  <label for="vehicle3"> Email Address</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; margin-bottom:20px; ">  
          <input type="checkbox" id="Guardian's Name" name="Guardian's Name" value="Bike"onclick="functions(id)">
  <label for="vehicle1"> Guardian's Name</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; margin-bottom:20px; ">  
          <input type="checkbox" id="Guardian's PhoneNumber" name="Guardian's PhoneNumber" value="Car"onclick="functions(id)">
  <label for="vehicle2"> Guardian's PhoneNumber</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; ">  
          <input type="checkbox" id="Guardian's EmailID" name="Guardian's EmailID" value="Boat"onclick="functions(id)">
  <label for="vehicle3"> Guardian's EmailID</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px;  margin-bottom:20px;">  
          <input type="checkbox" id="Gender" name="Gender" value="Bike"onclick="functions(id)">
  <label for="vehicle1"> Gender</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; margin-bottom:20px; ">  
          <input type="checkbox" id="Category" name="Category" value="Car"onclick="functions(id)">
  <label for="vehicle2"> Category</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; margin-bottom:20px; ">  
      
  <input type="checkbox" id="Age" name="Age" value="Boat"onclick="functions(id)">
  <label for="vehicle3"> Age</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px;  margin-bottom:20px;">  
          <input type="checkbox" id="StudentProgramme" name="vehicle1" value="Bike"onclick="functions(id)">
  <label for="vehicle1">StudentProgramme</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px;  margin-bottom:20px;">  
  <input type="checkbox" id="StudentDepartment" name="vehicle2" value="Car"onclick="functions(id)">
  <label for="vehicle2"> StudentDepartment</label>
               </div>  
            </div>
            <div class="col-md-3">  
          <div style="border:1px solid #ccc; padding:20px; margin-bottom:20px; ">  
          <input type="checkbox" id="Student Hostel" name="vehicle3" value="Boat"onclick="functions(id)">
  <label for="vehicle3"> Student Hostel</label>
               </div>  
            </div>
</div>
</form>
    <table id="customers">
</table>
      <script>
      var str="all";
      var dep="all";
      var cat="all";
      var gen="all";
      var array=[{name:"RollNumber",checked:"0"},{name:"FirstName",checked:"0"},{name:"LastName",checked:"0"},{name:"Address",checked:"0"},{name:"PhoneNumber",checked:"0"},{name:"Email Address",checked:"0"},{name:"Guardian's Name",checked:"0"},{name:"Guardian's PhoneNumber",checked:"0"},{name:"Guardian's EmailID",checked:"0"},{name:"Age",checked:"0"},{name:"Gender",checked:"0"},{name:"Category",checked:"0"},{name:"StudentProgramme",checked:"0"},{name:"StudentDepartment",checked:"0"},{name:"Student Hostel",checked:"0"}]
      function functions(a){
var i=0;
console.log(a);
for( i=0;i<15;i++){
  if(array[i]["name"]===a){
    array[i]["checked"]="check"
  }
}
                  }
      function strea(){
          var x=document.getElementById("stream");
          var i =x.selectedIndex;
          str= x.options[i].text!="All Streams" ? x.options[i].text:"all";
      }
      function department(){
          var x=document.getElementById("department");
          var i =x.selectedIndex;
          dep= x.options[i].text!="All Departments" ? x.options[i].text:"all";
      }
      function category(){
          var x=document.getElementById("category");
          var i =x.selectedIndex;
          cat= x.options[i].text!="All Categories" ? x.options[i].text:"all";
      }
      function gender(){
          var x=document.getElementById("gender");
          var i =x.selectedIndex;
          gen= x.options[i].text!="All Genders" ? x.options[i].text:"all";
      }
      function clik(){
                $.ajax({  
                url:"load_data.php",  
                method:"POST",  
                data:{stream:str,
                department:dep,
                category:cat,
                gender:gen,
                list:JSON.stringify(array)
                },  
                success:function(data){  
                    $('#customers').html(data);  
                }  
           });
      }
      </script>
</body>
</html>