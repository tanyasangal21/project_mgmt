<?php
require('config1.php');
session_start();
ob_start();
 if(isset($_POST['uid']) && isset($_POST['pwd']))
 {
     $uname=$_POST['uid'];
     $pwd=$_POST['pwd'];
 
 
      $query="select Emp_id,login,logout from employee where User_Name='$uname' AND Password='$pwd'";
      $query_run=mysql_query($query) or die(mysql_error());
     if(mysql_num_rows($query_run)==1)
     {
         $flag=2;
         while(($row=mysql_fetch_array($query_run))!=false)
         {
               $_SESSION['login']=$row['login'];
             $_SESSION['logout']=$row['logout'];
                $empid=$row["Emp_id"];
 
         }
      }
else
{
$message = "ERROR";
echo "<script type='text/javascript'>alert('$message');</script>";
}
 
         $_SESSION["eid"]=$empid;
           $query="select * from pm_emp";
                 $query_run=mysql_query($query) or die(mysql_error());
                   while(($row=mysql_fetch_array($query_run))!=false)
                   {
 
                        if($row["Pm_id"]==$empid)
                        {
                              date_default_timezone_set('Asia/Calcutta');
                             $date=date('Y-m-d H:i:s');
                            $query="update employee set login='$date' where Emp_id='$empid'";
                            mysql_query($query) or die(mysql_error());
 
                           header('Location:pm_panel.php');
                           $flag=1;
                         }
 
 
 
                       } 
 
 
             If($flag==2)
                   header('Location:first.php');
 
 
$query="select AMname from admin where Username='$uname' AND Password='$pwd'";      
     				 $result=mysql_query($query) or die(mysql_error());
 
					         while($row=mysql_fetch_array($result)or die(mysql_error()))
					         {
 
					                $_SESSION['uname']=$row['AMname'];
 
 
					         header('location:viewemp.php');
 
 
					      }
 
 
 
}
 
 
 
 
?>    
 
 
 
<html>
<head>
 
<style>
#main
{
width:100%;
height:100%;
 
}
#header
{
background-color:lightblue;
width:100%;
height:15%;
}
#header p
{
padding:3px;
 
}
#middleportion
{
width:100%;
height:85%;
 
}
 
#middleportionleft
{
background-color:#1fb2b2;
width:16%;
height:100%;
 
float:left;
}
#middleportionright
{
width:80%;
height:100%;
float:right;
backgroud-color:red;
}
#top
{
width:100%;
height:20%;
 
}
 
#top ul li
{
 
display:inline;
}
#top button
{
 
width:150px;
height:20px;
}
 
form
{
 
margin-top: 6.9%;
}|>
form input
{
width:120px;
}
header button
{
 
}
</style>
</head>
<body>
 
    <div id="main">
            <div id="header">
                <p><center><font size="8" style="margin-left:150px">Design Management Tool</font></center></p>
 
 
 
 
            </div>
            <div id="middleportion">
                <div id="middleportionleft">
                </div>
                <div id="middleportionright">
                        <div id="top"><center>
                            <form name="myform" method='POST' action="<?php echo $_SERVER["PHP_SELF"];?>" >
                            Username <input type="text" name="uid" id="uid" > 
                            <br><br>
                            Password    <input type="password" name="pwd"  id='pwd'> 
                                 <br><br>
                            <input type='submit' value='login'>
                            </form>
                        <BR/>
                           <a href="SignUp.php">SignUp/</a>
                             <a href="forgot.php">Forgot Password </a>
                             </center>
                     </div>
                </div>
            </div>
    </div>
 
</body>	
</html>			