<?php
require('config1.php');
session_start();
ob_start();
$eid;
$eid=$_SESSION['eid'];
 
if(isset($_SESSION['eid']))
{
         date_default_timezone_set('Asia/Calcutta');
         $date=date('Y-m-d H:i:s');
         $query="update employee set logout='$date' where Emp_id='$eid'";
         mysql_query($query) or die(mysql_error());
 
    unset($_SESSION['eid']);
    unset($_SESSION['ename']);
    unset($_SESSION['login']);
    unset($_SESSION['logout']);
    header('location:login_page.php');
}
?>