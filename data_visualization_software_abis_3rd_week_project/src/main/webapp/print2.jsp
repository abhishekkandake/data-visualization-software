<%@page import="data_visualization_software_abis_3rd_week_project.dto.Client"%>
<%@page import="java.util.List"%>
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
		
		width:26%;
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
	.d8{
		display:flex;
		border:none;
		height:70px;
		background-color:#edf0f0;
		
	}
	.d9{
		height:42px;
		width:55px;
		border:2px solid green;
		margin-top:9.5px;
		margin-left:5px;
		 border-top-right-radius: 10px;
 		background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAgzqX1Rb_oTPU2Jv6RLqDSN1lXNfWAQzoCA&usqp=CAU");
 		 background-repeat:no-repeat;
		 background-size:cover;
	}
	.d10{
		width:99.8%;
		height:100px;
		border:2px solid red;
		margin-top:10px;
		background-color:#5b9ef0;
		color:white;
		text-align:center;
		
	}
	.d11{
		height:300px;
		width:99.9%;
		border:2px solid red;
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
	.i1{
		border:2px solid red;
		width:700px;
		height:40.3px;
		margin-top:10px;
		margin-left:10%;
		text-align:center;
		font-weight:bold;
		 border-top-left-radius: 10px;
	}
	.d12{
		width:300px;
		margin-left:50%;
		border:none;
		margin-top:0px;
		background-color:#edf0f0;	}
	.bt21{
		width:100px;
		font-weight:bolder;
		border:none;
		color:black;
	}
	.p1{
		background-color:#5b9ef0;
		color:white;
		font-weight:bold;
		font-size:50px;
		margin-top:20px;
	}
	table {
		width:100%;
		border:2px solid black;
	}
	td{
		border:2px solid black;
	}
	tr{
	border:2px solid black;
	}\
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
				| java Project with Source Code | Java Eclipse   </p>
			</div>
		</div>
	</div>
	<div class = "d5">
		<div class = "d6">
			<button class = "b1">Home</button><br><br>
			<button><a href = "client.jsp">Client</a></button><br><br>
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
			<div class = "d8">
				<form action = "search" Method = "post">
					<input type = "number" name ="id" placeholder = "Enter Client id" class ="i1">
					<div class = "d12"><button class ="bt21">search</button></div>
				</form>
				<div class ="d9">
					
				</div>
			</div>
			<div class ="d10">
				<p class ="p1">Serach And Print Information</p>
			</div>
			<div class = "d11">
			<%List<Client> clients = (List)request.getAttribute("List"); %>
				<table>
					<tr>
						<td>id</td>
						<td>name</td>
						<td>phone</td>
						<td>address</td>
						<td>email</td>
						<td>password</td>
						<td>delete</td>
						<td>update</td>
					</tr>
					<%for(Client client:clients){ %>
						<tr>
							<td><%=client.getId() %></td>
							<td><%=client.getName() %></td>
							<td><%=client.getPhone() %></td>
							<td><%=client.getAddress() %></td>
							<td><%=client.getEmail() %></td>
							<td><%=client.getPassword() %></td>
							<td class = "td">delete</td>	
							<td class = "td">update</td>	
						</tr>		
					<%} %>
										
				</table>
			</div>
		</div>
	</div>
</body>
</html>