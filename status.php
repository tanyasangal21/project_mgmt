<?php
session_start();

$projectId=$_GET["pid"];

$_SESSION["projectId"]=$projectId;
?>


<!DOCTYPE HTML>
<?php require("statusBackend.php");  ?>
<html>
<head>
<style>
#container
{
	width:50%;
	padding:10px;
	padding-bottom: 40px;
	margin:auto;
}
#chartContainer{
	width:75%;
	margin-left: 23%;
	margin-top:23%;
	position: relative;	
}
</style>
<script type="text/javascript">
window.onload = function () {

CanvasJS.addColorSet("shades",
                [//colorSet Array

                classDiagramColor,
                erDiagramColor,
                dataFlowColor,
                structureColor,
                reqColor,
                "#cc0000"                
                ]);
var datapoint = [
				{ y: 11, indexLabel: "Class Diagram" },
				{ y: 11, indexLabel: "ER Diagram" },
				{ y: 11, indexLabel: "Architecture Diagram" },
				{ y: 11, indexLabel: "Structure Diagram"},
				{ y: completeStatus, indexLabel: "Requirements" },
				{ y: incompleteStatus }
			];

	var chart = new CanvasJS.Chart("chartContainer",
	{	
	 colorSet: "shades",
		title:{
			text: "Project Status"
		},
		legend: {
			maxWidth: 450,
			itemWidth: 180
		},
		data: [
		{
			type: "pie",
			showInLegend: false,
			legendText: "{indexLabel}",
			dataPoints: datapoint
		}
		]
	});
	chart.render();
}
</script>
<script type="text/javascript" src="canvas/canvasjs.min.js"></script>
</head>
<body>
<?php require("designstyle.php");  ?>
<div id="container">
<div id="chartContainer" style="height: 500px;"></div>
</div>

</body>
</html>