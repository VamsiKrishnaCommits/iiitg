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
if (mysqli_connect_errno()) {
         exit();
       }
       $name=$_POST["email"];
       $pass=sha1($_POST["pass"]);
        $sql2 = "SELECT Role FROM authentication WHERE Name='$name' AND Password='$pass'"; 
    $result = mysqli_query($connect, $sql2);
    $role=mysqli_fetch_array($result);
   if(! isset($role[0])){
   echo "error";
}
else{
    setcookie("username", $name, time() + (86400 * 30), "/");
if($role[0]=="admin"){
    setcookie("role", $role[0], time() + (86400 * 30), "/");    
echo "admin";    
}
else if($role[0]=="staff"){
    setcookie("role", $role[0], time() + (86400 * 30), "/");    
    header("Location: info.php");
    echo "staff";
}
else if($role[0]=="student"){
    setcookie("role", $role[0], time() + (86400 * 30), "/");    
echo "student";
}
}
    ?>
</body>
</html>