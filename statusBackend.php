<?php
session_start();

?>


<script>
var totalReq=0,completeReq=0,incompleteReq=0,completeStatus,incompleteStatus;
var reqColor,dataFlowColor,structurColor,erDiagramColor,classDiagramColor;
</script>

<?php


$reqCompletedTotal=0;

$projectId=$_SESSION["projectId"];	

$con = mysqli_connect("localhost","root","","1122518") or die("Error " . mysqli_error($con));

$query="select * from baseline where Project_id='$projectId'";				

$result=mysqli_query($con,$query);

$totalRows= mysqli_num_rows($result);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        if($row["Status"]=="completed" || $row["Status"]=="complete")	
        {				
            $reqCompletedTotal+=1;
        	echo "<script>completeReq++;</script>";
        }
    }


} 
else {
    echo "0 requirement results";
echo("Error description: " . mysqli_error($con));
}


mysqli_close($con);

$reqCompletedTotal=($reqCompletedTotal/$totalRows)*56;

?>
<script>
	totalReq='<?php echo $totalRows; ?>';

	completeStatus=(completeReq/totalReq)*56;
	incompleteStatus=56-completeStatus;

	reqColor="#2da94f";

	if(completeStatus==0)
	{
		reqColor="#cc0000";
		completeStatus=56;
		incompleteStatus=0;
	}

</script>



<?php


$diagramCompletedTotal=0;

$con = mysqli_connect("localhost","root","","1122518") or die("Error " . mysqli_error($con));



$projectId=$_SESSION["projectId"];


$query='select * from diagram where fileName="class diagram" and '." pid='$projectId'";					

$result=mysqli_query($con,$query);



echo '<script>classDiagramColor="#cc0000"</script>';

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();

    if($row["status"]=="completed" || $row["status"]=="complete")				
       	{
            echo '<script>classDiagramColor="#2da94f"</script>';
      $diagramCompletedTotal+=1;
}


}




$query='select * from diagram where fileName="structure diagram" and '." pid='$projectId'";				

$result=mysqli_query($con,$query);

echo '<script>structureColor="#cc0000"</script>';

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc(); 
        
    if($row["status"]=="completed" || $row["status"]=="complete")					
    {

        	echo '<script>structureColor="#2da94f"</script>';
    $diagramCompletedTotal+=1;
}
    }



$query='select * from diagram where fileName="ER diagram" and '." pid='$projectId'";					

$result=mysqli_query($con,$query);

echo '<script>erDiagramColor="#cc0000"</script>';

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
        
    if($row["status"]=="completed" || $row["status"]=="complete")					
      	{
            echo '<script>erDiagramColor="#2da94f"</script>';
        $diagramCompletedTotal+=1;
}
    }






$query='select * from diagram where fileName="architecture diagram" and '." pid='$projectId'";					

$result=mysqli_query($con,$query);

echo '<script>dataFlowColor="#cc0000"</script>';

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
        
    if($row["status"]=="completed" || $row["status"]=="complete")					
        {
           	echo '<script>dataFlowColor="#2da94f"</script>';
       $diagramCompletedTotal+=1;
            }

       }



$diagramCompletedTotal=($diagramCompletedTotal/4)*44;
$totalCompleted=$diagramCompletedTotal+$reqCompletedTotal;



$_SESSION["totalCompleted"]=$totalCompleted;
?>		