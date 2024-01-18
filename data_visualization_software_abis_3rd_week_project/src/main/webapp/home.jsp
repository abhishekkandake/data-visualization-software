<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	h1{
		text-align:center;
		background-color:red;
		color:white;
	}
	.d{
		display:flex;
		width:100%;
		height:115px;
		background-color:#696161;
	}
	.d1{
		width:7%;
		height:80px;
		margin-left:15px;
		background-image:url("https://www.shutterstock.com/image-vector/farmer-working-on-field-vector-260nw-2194804755.jpg");
		background-repeat:no-repeat;
		background-size:cover;
	}
	.d2{
		width:60%;
		height:80px;
		margin-left:15%;
		background-color:red;
		border-radius:5px;
	}
	.d3{
		
		width:100%;
		height:
		45px;
		background-color:red;
		font-style: italic;
		font-size:30px;
		color:white;
		font-weight: bold;
		margin-top:0px;
		text-align:center;
	}
	.d4{
		
		margin-left:0%;
		color:white;
		height:20px;
		
	}
	.p{
		padding:0% 0%;
		margin-left:25px;
		font-weight: bold;
	}
	p{
		margin-bottom:10px;
		margin-bottom: 25px;
		font-weight: bold;
	}
	body{
		background-color:#385ed9;
	}
	.d5{
		display:flex;
	}
	.d6{
		
		width:29%;
		border:4px solid black;
		height:480px;
		margin-top:1%;
		background-color:#c5eff0;
		
	}
	
	.d7{
		height:100px;
		width:90%;
		margin-left:1%;
		height:485px;
		margin-top:1%;
		background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Hy_VIOSc7zhWHbhibzY-Zr8289Zo-Y2Rh4I0D0SXrbK9iiAgBRmuThehoA70kQYKJyk&usqp=CAU");
		background-size:cover;
		background-repeat:no-repeat;
	}
	button{
		margin-top:4%;
		margin-left:25%;
		color:#385ed9;
		font-weight: bold;
		border:none;
		width:200px;
	}
	button:hover{
		border-right: 2px solid black;
		border-bottom:2px solid black;
		border-radius:4px;
		background-color:inhert;
	}
	.b1{
		margin-top:5%;
	}
	a{
		text-decoration:none;
	}
	table{
		width:400px;
	}
</style>
</head>
<body>
	<h1>data visualization software</h1>
	<div class = "d">
		<div class = "d1"> 
		
		</div>
		<div class = "d2">
			<div class = "d3">
				<p>ABis</p>
			</div>
			<div class = "d4">
				<p class ="p">DETA  visualization PROJECT | 
				| java Project with Source Code | Java Eclipse  
				 </p>
			</div>
		</div>
	</div>
	<div class = "d5">
		<div class = "d6">
			<button class = "b1">Home</button><br><br>
			<form action = "clientDeta" method = "post"><button>Client</button></form><br><br>
			<form action = "transactionClient" method = "post"><button class = "button">Transaction</button></form>
			<form action = "inwarddeta" method = "post"><button>Inward Deta</button></form><br><br>
			<button><a href = "print.jsp">Print</a></button><br><br>
			
			<button><a href = "search.html">Search</a></button><br><br>
			<form action="histogram" method = "post"><button class = "button">Histogram</button></form><br><br>
			<button><a href = "analytical_statistics.jsp">Analytical Stitstics</a></button><br><br>
			<button>Refresh</button><br><br>
			<button>Logout / Sign out</button><br><br>
		</div>
		<div class = "d7">
			
		</div>
	</div>
</body>
</html>