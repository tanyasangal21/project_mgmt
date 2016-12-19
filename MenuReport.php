<html>
<head>
	<title>Report</title>
	

	<style>
   header
        {
            width: 85%;
            background-color: lightblue;
            height: 10%;
            float: right;
        }
    #logout
        {
            margin-top: 25px;
            float: right;
            overflow-x: auto;
            margin-right: 20px;
            background-color: orangered;
            padding: 10px 10px 10px 10px;
            border-style: solid;
            
        }
    #name
        {
            margin-top: 40px;
            float: right;
            overflow-x: auto;
        }
  
    nav
        {
            float: left;
            height: 100%;
            width: 15%;
            background-color: lightgray;
            position: fixed;
            overflow: auto;
        }
    #navul
        {
            margin-top: 150px;
            display: block;
        }
    #navul li a
        {
            text-decoration: none;
            color: black;
        }
    #navul li a:hover
        {
            text-decoration: none;
            color: black;
            background-color: lightskyblue;
            padding: 10px 10px 10px 10px;
            border-radius: 5px;
            border-color: lightskyblue;
            border-style: solid;
        }
        
    #frames
        {
            margin-left:201px;
            margin-top: 0px;
        }
    </style>
	
</head>

<body onload=display_ct();>	
	<header>
        
        <button id="logout" onclick="window.location.href='pm_logout.php'">LOGOUT</button>
        <label id="name">Hi,&nbsp; &nbsp; <?php //echo $userName;?></label>
		
	</header>
	<nav>
       
		<ul id="navul" style="list-style:none;">
            
			<li><a href="pm_panel.php">Home</a></li>
			  <br>
			<li><h2><a href="MenuReport.php">Reports</a></h2></li>
            
		</ul>
	</nav>
    
    <iframe id="frames" height="582px" width="1150px;"  src="MenuReportStart.php"
            ></iframe>
    
</body>
</html>