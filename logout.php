<?php
if(!(isset($_COOKIE["role"]))){
    header("location:auth.php");
    exit();
}

?>

<?php
$past = time() - 3600;
foreach ( $_COOKIE as $key => $value )
{
    setcookie( $key, null, 36000 * 84, '/','localhost' );
}

header("location:auth.php");
exit();
?>