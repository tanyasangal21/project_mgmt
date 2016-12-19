<?php
include 'connection.php';
$projectID=$_GET["pid"];

?>
<html>
<head>
	<title> DESIGN MANAGEMENT SYSTEM </title>
	<link rel="stylesheet" type="text/css" href="pagelayout.css">
</head>

<body>	
	<?php 
	$query = "select Emp_Name from employee where Emp_id = '$eID'";
	$result = mysql_query($query);
	$temp = mysql_fetch_row($result);
	$empName = $temp[0];
	?>
	<header>
		<b>DESIGN MANAGEMENT SYSTEM</b>
		<button id="logout" onclick="">LOGOUT</button>
		<label id="name">Hi! <?php echo $empName; ?></label>
	</header>
	<label id='time' ></label>
	<nav>
		<ul style="list-style:none;">
                        <li><a href="first.php?pid=<?php echo $projectID; ?>">Home</a></li>
			<li><a href="status.php?pid=<?php echo $projectID; ?>">View</a></li>
			<li><a href="Uploads.php?pid=<?php echo $projectID; ?>">Upload</a></li>
			<li><a href="detailedStatus.php?pid=<?php echo $projectID; ?>">Detailed Status</a></li>
			<li><a href="Requirements.php?pid=<?php echo $projectID; ?>">Requirements</a></li>
			<li><a href="MenuReport.php?pid=<?php echo $projectID; ?>">Report</a></li>
		</ul>
	</nav>
</body>
</html>