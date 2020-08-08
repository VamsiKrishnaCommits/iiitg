<?php
$number = count($_POST["name"]);
if($number > 1)
{
	for($i=0; $i<$number; $i++)
	{
		if(trim($_POST["name"][$i] != ''))
		{
           echo  $_POST["name"][$i];
		
		}
	}
	echo "Data Inserted";
}
else
{
	echo "Please Enter Name";
}