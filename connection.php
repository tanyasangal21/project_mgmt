<?php
session_start();// setting global variables using session variables
$eID=$_SESSION["eid"];
$projectID=$_SESSION["projectId"];
$systemID=$_SESSION["systemid"];
$database="1122518"; //database name
$con = mysql_connect("localhost","root","");//database connection
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("$database", $con);//select database
?>

