<?php
require('config1.php');
session_start();

$eid=$_SESSION['eid'];
    
     $query="select Emp_Name,Emp_Email,Emp_Designation from employee NATURAL JOIN pm_emp where Pm_id='$eid'";
	 $query_run=mysql_query($query) or die(mysql_error());
	 if(mysql_num_rows($query_run)==0)
	 {
	     echo 'There are no employees under this Project Manager';
	 }
	 
	else
  {
     
	 echo'<table border="1" style="border-collapse:collapse;" class="table-bordered">';
	 echo'<tr>';
	    echo'<th>Employee Name</th>';
		echo'<th>Email</th>';
		echo'<th>Designation</th>';
	 echo'</tr>';
	 
	 while(($row=mysql_fetch_array($query_run))!=false)
	 {
	    echo '<tr>';
			echo'<td>'.$row['Emp_Name'].'</td>';
			echo'<td>'.$row['Emp_Email'].'</td>';
			echo'<td>'.$row['Emp_Designation'].'</td>';
		echo '</tr>';
	 }
	 echo'</table>';
	
  }       
?>