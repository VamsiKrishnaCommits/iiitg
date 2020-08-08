<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
    exit();
}

?>

<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    require 'need.php';
$sql="UPDATE authentication SET Password= "."'". sha1($_POST['password']) ."'"." WHERE Name="."'".$_COOKIE['username']."'";
echo $sql;
$result=mysqli_query($connect,$sql);
    ?>
</body>
</html>