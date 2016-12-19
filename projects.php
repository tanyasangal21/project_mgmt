<?php
include('config1.php');
session_start();
$eid=$_SESSION['eid'];
 
     $query="select * from project NATURAL JOIN project_pm where Emp_Id='$eid'";
	 $query_run=mysql_query($query) or die(mysql_error());
	 if(mysql_num_rows($query_run)==0)
	 {
	     echo 'There are no project under this employee';
	 }
 
	else
  {
 
	 echo'<table border="1" style="border-collapse:collapse; text-align:center;" class="table-bordered">';
	 echo'<tr>';
	    echo'<th>Project Name</th>';
		echo'<th>Status</th>';
		echo'<th>Project Description</th>';
		echo'<th>Start Date</th>';
		echo'<th>End Date</th>';
		echo'<th>Total hours</th>';
		echo'<th>Member Working</th>';
                echo'<th>View Status</th>' ;
	 echo'</tr>';
 
	 while(($row=mysql_fetch_array($query_run))!=false)
	 {
	    echo '<tr>';
			echo'<td>'.$row['Proj_Name'].'</td>';
			echo'<td>'.$row['Status'].'</td>';
			echo'<td>'.$row['Proj_Desc'].'</td>';
			echo'<td>'.$row['StartDate'].'</td>';
			echo'<td>'.$row['EnDate'].'</td>';
			echo'<td>'.$row['NoOfHrs'].'</td>';
			echo'<td>'.$row['NoOfMembers'].'</td>';
                        echo'<td><input type="button" value="view" id="'.$row['Proj_Id'].'" onclick="redirect(this)"></td>';
		echo '</tr>';
	 }
	 echo'</table>';
 
  }
 
 
 
 
?>