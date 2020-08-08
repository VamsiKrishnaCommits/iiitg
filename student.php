<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
    exit();
}
else{
    if($_COOKIE["role"]!="student"){
        header("location:auth.php");
        exit();
    }
}
?>

<?php
session_start();
?>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<!DOCTYPE html>
<style>
      body1 {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 ;
      }
    </style>
<style>

.minute,
.hour {
  position: absolute;
  height: 100px;
  width: 6px;
  margin: auto;
  top: -27%;
  left: 0;
  bottom: 0;
  right: 0;
  background: black;
  transform-origin: bottom center;
  transform: rotate(0deg);
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
  z-index: 1;
}

.minute {
  position: absolute;
  height: 130px;
  width: 4px;
  top: -38%;
  left: 0;
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
  transform: rotate(90deg);
}

.second {
  position: absolute;
  height: 90px;
  width: 2px;
  margin: auto;
  top: -26%;
  left: 0;
  bottom: 0;
  right: 0;
  border-radius: 4px;
  background: #FF4B3E;
  transform-origin: bottom center;
  transform: rotate(180deg);
  z-index: 1;
}

.dot {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 12px;
  height: 12px;
  border-radius: 100px;
  background: white;
  border: 2px solid #1b1b1b;
  border-radius: 100px;
  margin: auto;
  z-index: 1;
}



.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
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
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite; /* Safari */
  animation: spin 2s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
pad{
  padding:20px 20px 20px 20px;
}
.space {
     margin-bottom: 1cm;
  }
 
.center{
    margin: auto;
  width: 50%;
  font-size: large;
align:center;
}
.button{
  font-size:30px;
}
.extra{
  font-size: 40px;
  background-color: #4CAF50;
}
.monospace {
  font-family: "Lucida Console", Courier, monospace;
}
.container {
  display: flex;
}
.container.space-around {
  justify-content: space-around;
}
.container.space-between {  
  justify-content: space-between;
}
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
* {
        margin: 0;
        padding: 0;
        border: 0;
        outline: 0;
        font-size: 100%;
        vertical-align: baseline;
        background: transparent;
    }
h1 {
  color:#0000ff;
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
<html lang="en">
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
<body id="body">
</div>
</br>
    <?php
require 'need.php';
$roll=$_COOKIE["username"];
    $sql = "SELECT RollNo,Approved FROM courseregistrationsineverysemester WHERE RollNo = $roll ";
       $resul= mysqli_query($connect, $sql);
        $row = mysqli_fetch_array($resul);
          if($row!=null){
if($row[1]=="rejected"){
  echo "<div class='center'>
  <center><b  >Your registration is rejected,kindly make the asked changes and register again
  </b></center>
  </div>
  <p class='space'></p>
  ";
  $sql = "SELECT StudentDepartment FROM general WHERE RollNumber=$roll";
  $result=mysqli_query($connect,$sql);
  $Departmentresult=mysqli_fetch_array($result);
  $department= $Departmentresult[0];
  $batch=20-(substr($roll,0,2)+0)+1 ;
  $programme=substr($roll,2,2);
  if($programme=="01"){
      $pro="B.Tech";
  }
  else if($programme=="02"){
      $pro="M.Tech";
  }
  else{
      $pro="PhD";
  }
  $addcoursesbutton="";
  $querycourses="SELECT CourseNumber,CourseType FROM courseofferingsineverysemester   WHERE Programme='$pro' AND Department= '$department' AND BatchType=$batch";
  $result= mysqli_query($connect,$querycourses);
  $elective='<tr><td>'. '<select name="electivesel" id="electivesel"  onchange="department()">
  <option value="" >Select an elective </option>';
  $output = '<table id="customers">
  <tr>'.
  '<th>'."CourseName".'</th>
  <th>'."CourseType".'</th>'.'<th>'."Choice".'</th></tr>'; 
  $output=$output.'<form id="form" method="post">';
  while($row=mysqli_fetch_array($result)){
      if($row[1]=="Compulsory"){
      $output=$output.
      '<tr>
        <td>'.$row[0].'</td>
      <td>'.$row[1].'</td><td>
      <div><input type="checkbox" id= '. $row[0].' name=' . $row[0].' value=' .$row[1].' " >
      <label for="vehicle1">'."                                  ".'</label>
      </td></tr>';
  }
      else{
  $elective=$elective. "<option >" . $row[0]. "</option>"   ;       
      }
  }
  $output=$output. $elective.'<td>'."Electives".'</td><td>
  <div><input type="checkbox" id="Electives" name="Electives" value="Electives"  >
  <label for="vehicle1">'."                                  ".'</label>
  </td></tr></table>';
  $output=$output;
  echo $output.'
  </form> 
             
           <form name="add_name" id="add_name">
            <div class="table-responsive">
              <table class="table table-bordered" id="dynamic_field">
                <tr>
                  <td><button  type="button" name="add" id="add" class="btn btn-success">Add More Courses</button></td>
                </tr>
              </table>
          <center>   
           <input type="button" name="submit" id="submit" class="btn btn-info" value="Submit" />
             
          </center>
           </div>
          </form>
        </div>';
}

else if($row[1]=="approve"){
  echo '<div class="center">
  <div class="center">
      <div class="card">
        <h1>Approved!</h1> 
        <p>Your registration is approved </p>
      </div>
      </div>
      </div>'
    ;
}
else{
  echo '
  <div class="center">
  <div class="center">
      <div class="card">
        <h1>Pending!</h1> 
        <p>We received your registration<br/> We will notify you about the status of registration</p>
      </div>
      </div>
      </div>
   ';
}
          }
          else{
            $sql = "SELECT StudentDepartment FROM general WHERE RollNumber=$roll";
            $result=mysqli_query($connect,$sql);
            $Departmentresult=mysqli_fetch_array($result);
            $department= $Departmentresult[0];
            $batch=20-(substr($roll,0,2)+0)+1 ;
            $programme=substr($roll,2,2);
            if($programme=="01"){
                $pro="B.Tech";
            }
            else if($programme=="02"){
                $pro="M.Tech";
            }
            else{
                $pro="PhD";
            }
            $addcoursesbutton="";
            $querycourses="SELECT CourseNumber,CourseType FROM courseofferingsineverysemester   WHERE Programme='$pro' AND Department= '$department' AND BatchType=$batch";
            $result= mysqli_query($connect,$querycourses);
            $elective='<tr><td>'. '<select name="electivesel" id="electivesel"  >
            <option value="" >Select an elective </option>';
            $output = '<table id="customers">
            <tr>'.
            '<th>'."CourseName".'</th>
            <th>'."CourseType".'</th>'.'<th>'."Choice".'</th></tr>'; 
            $output=$output.'<form id="form" method="post">';
            while($row=mysqli_fetch_array($result)){
                if($row[1]=="Compulsory"){
                $output=$output.
                '<tr>
                  <td>'.$row[0].'</td>
                <td>'.$row[1].'</td><td>
                <div><input type="checkbox" id= '. $row[0].' name=' . $row[0].' value=' .$row[1].' " >
                <label for="vehicle1">'."                                  ".'</label>
                </td></tr>';
            }
                else{
            $elective=$elective. "<option >" . $row[0]. "</option>"   ;       
                }
            }
            $output=$output. $elective.'<td>'."Electives".'</td><td>
            <div><input type="checkbox" id="Electives" name="Electives" value="Electives"  >
            <label for="vehicle1">'."                                  ".'</label>
            </td></tr></table>';
            $output=$output;
            echo $output.'
            </form>
            </form>

          <form name="add_name" id="add_name">
            <div class="table-responsive">
              <table class="table table-bordered" id="dynamic_field">
                <tr>
                  <td><button  type="button" name="add" id="add" class="btn btn-success">Add More Courses</button></td>
                </tr>
              </table>
          <center>   
           <input type="button" name="submit" id="submit" class="btn btn-info" value="Submit" />
             
          </center>
           </div>
          </form>
        </div>';


          }
      

?>
<script>

$(document).ready(function(){
	var i=0;

	$('#add').click(function(){
		i++;
		$('#dynamic_field').append('<tr id="row'+i+'"><td><input type="text" name="'+i+'coursename"  id="'+i+'coursename" placeholder="Enter your Name" class="form-control name_list" /></td>'+
                '<td><select   id="'+i+'select"  name="'+i+'coursetype"  onchange="checkdep('+i+')" >'+
'<option value="" > Select course type </option>'+
'<option value="credit" > Credit </option>'+
'<option value="audit" > Audit </option></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td><td><p id ="'+i+'message"></p></td></tr>');
	});
	
	$(document).on('click', '.btn_remove', function(){
		var button_id = $(this).attr("id"); 
		$('#row'+button_id+'').remove();
	});
	$('#submit').click(function(e){		
          var a= $('#form').serialize();
          if(a==="electivesel="){
            alert("Please select atleast one course");
  }
else{
	var x = $("#add_name").serializeArray();
  var count=0
    $.each(x, function(i, field){
if(field.value===""){
	alert("Please select "+field.name);
  count++;
  return false;
}
    });
    if(count==0){
      $('#'+"submit").html("<center><div class='loader'></div><center>");
	$.ajax({
			url:"submit.php",
			method:"POST",
			data:$('#form').serialize()+"&"+$('#add_name').serialize(),
			success:function(data)
			{
$('#'+"body").html(data);
	}
		});
    }
   
}
	});	

});

function checkdep(num){
var str=num+"coursename";
name=$('#'+str).val();
var str1 = $('#form').serialize()+$("#add_name").serialize();
var str2 = name;
if(!(str1.indexOf(str2) != -1)){
    console.log(str2 + " found");
$.ajax({
	async:false,
			url:"check.php",
			method:"POST",
			data:"name="+name,
			success:function(data)
			{			
		
				if(data.indexOf("not") > -1){
					$('#'+num+'message').html(data);
					$('#'+num+'select').val('');
				}
				else{
					$('#'+num+'message').html(data);
				}

	}
		});
}
else{
  console.log("vamsi");
  alert("You can opt a course only once!");
					$('#'+num+'select').val('');
}
	};

</script>
</body>
</html>