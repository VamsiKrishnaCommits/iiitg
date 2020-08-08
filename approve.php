<?php
require 'need.php';
$roll=$_POST["roll"];
$message=$_POST["mess"];
     $sql="UPDATE courseregistrationsineverysemester SET Approved='$message' WHERE RollNo= '$roll'";
     if( mysqli_query($connect, $sql)){
         echo "approved successfully";
     }
     else{
         echo "Failed to approve!"
     ;}
?>