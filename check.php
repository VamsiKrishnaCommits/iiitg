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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <?php
    require 'need.php';
    session_start();

$course=$_POST["name"];
    $sql = "SELECT COUNT(CourseNumber)FROM courseofferingsineverysemester WHERE CourseNumber = '$course'";
   $resul= mysqli_query($connect, $sql);
    if (    $row = mysqli_fetch_array($resul)    ) {
        if( $row[0]==0){
            echo "Course is not offered this semester";

        $_SESSION["course"]="0";

        echo $_SESSION["course"];
        }
        else{
            echo "Course is offered this semester";
            $_SESSION["course"]="1";
            echo $_SESSION["course"];

                    }
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($connect);
      }
    ?>
</body>
</html>