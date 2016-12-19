<?php
require('config1.php');
session_start();
$logout=$_SESSION['logout'];
$eid=$_SESSION['eid'];

$query="select * from file where timestamp >='$logout' UNION select * from diagram where date >='$logout'";
$query_run=mysql_query($query) or die(mysql_error());
if(mysql_num_rows($query_run)==0)
{
    echo 'There are no recent notifications';
}
else
{

?>
<h4> The following changes were made </h4>
<table border="1" style="border-collapse:collapse;" cellpadding="10" class="table-bordered" >
    <tr>
        <th>Filename</th>
        <th>Fileid</th>
        <th>Comment</th>
        <th>Updated By(Employee id)</th>
        <th>Status</th>
        
    </tr>
<?php
while(($row=mysql_fetch_array($query_run))!=false)
{
    echo'<tr>';
     echo'<td>'.$row['filename'].'</td>';
     echo'<td>'.$row['fileid'].'</td>';
     echo'<td>'.$row['comment'].'</td>';
     echo'<td>'.$row['empid'].'</td>';
     echo'<td>'.$row['status'].'</td>';
    
    echo'</tr>';
}

echo '</table>';
}
?>
