<?php
$nav='<div class="topnav">';
if($_COOKIE["role"]=="admin" || $_COOKIE["role"]=="staff"){
    $nav=$nav.'<a  id="info.php" href="info.php">General Information</a>
    <a id="summary.php" href="summary.php">Summary</a>.<a id="cpispi.php" href="cpispi.php">CPI / SPI calculation</a>'.'<a id="graderecords.php" href="graderecords.php">Upload grades</a><a id="changepassword.php" href="changepassword.php">Change Password</a>'; 
}
if($_COOKIE["role"]=="staff"){
    $nav=$nav.'<a id="you.php" href="you.php">Faculty Advisor\'s Console</a><a id="logout.php" href="logout.php">Log Out</a>
    </div>';
}
if($_COOKIE["role"]=="admin"){
    $nav=$nav.'<a  id="loadsemesterfees.php" href="loadsemesterfees.php">Upload Fee Information</a>
    <a id="bulkuploadbankrecords.php" href="bulkuploadbankrecords.php">Upload Bank Records</a>
    <a id="hosteldues.php" href="hosteldues.php">Upload Monthly Mess Dues</a>
    <a id="imposefine.php" href="imposefine.php">Impose Fine</a>
    <a id="logout.php" href="logout.php">Log Out</a></div>';
}
 if($_COOKIE["role"]=="student"){
 $nav=$nav.'<a id="student.php" href="student.php">Registration</a><a id="grades.php href="grades.php">Grades</a><a id="changepassword.php" href="changepassword.php">Change Password</a><a  id="logout.php" href="logout.php">Log Out</a></div>';
}
$name=basename($_SERVER['PHP_SELF']);
$script= "<script>
 var element = document.getElementById('".$name."');
element.classList.add('active');
</script>
"
?>