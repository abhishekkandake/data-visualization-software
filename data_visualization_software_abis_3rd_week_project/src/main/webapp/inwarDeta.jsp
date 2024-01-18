<%@page import="data_visualization_software_abis_3rd_week_project_inward.dto.Inward"%>
<%@page import="data_visualization_software_abis_3rd_week_project_transaction.dto.Transaction"%>
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
	
	body{
		background-color:#385ed9;
	}
	.d5{
		display:flex;
	}
	.d6{
		
		width:14%;
		height:480px;
		margin-top:1%;
		background-color:#c5eff0;
		background-image:url("https://images.unsplash.com/photo-1554054233-2baf02406cf9?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhbnNwYXJlbnQlMjBnbGFzc3xlbnwwfHwwfHx8MA%3D%3D");
	}
	
	.button{
		margin-top:4%;
		margin-left:25%;
		color:#385ed9;
		font-weight: bold;
		border:none;
		background-color:#54bad6;
		border-right: 2px solid black;
		border-bottom:2px solid black;
		border-radius:4px;
		width:110px;
		
	}
	.button:hover{
		border-right: 2px solid black;
		border-bottom:2px solid black;
		border-radius:4px;
		background-color:inhert;
	}
	.b1{
		margin-top:5%;
	}
	
	
	.d7{
		width:100%;
		height:480px;
		background-color:#dff5f3;
		margin-top:15px;
		margin-left:10px;
	}
	.d8{
		margin:10px;
		border:2px solid black;
		height:240px;
		background-color:#bbf0ec;
		border-radius:4px;
	}
	.d9{
		margin:10px;
		border:2px solid black;
		height:205px;
		background-color:#bbf0ec;
		border-radius:4px;
	}
	table{
		text-align:center;
		border:0.1px solid black;
		margin-top:10px;
		margin-left:8px;
		width:98.6%;
		font-size:10px;
		
	}
	td{
		border:0.1px solid red;
		
		
	}
	.d10{
		margin-top:0.1%;
		margin-left:0.1%;
		border:1px solid red;
		border-radius:4px;
		background-color:green;
		width: 99.5%;
		height:268px;
	}
	.i1{
		margin-left:10px;
	}
	
	input{
		text-align:center;
		width:386.1px;
		height:20px;
		margin-top:3px;
	}
	.b1{
		width:110px;
	}
	.bt1{
		width:310px;
		margin-left:10px;
	}
	.btt1{
		width:310px;
		margin-left:10px;
	}
	.btt2{
		width:550px;
		margin-left:10px;
	}
	a{
		text-decoration:none;
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
				| java Project with Source Code | Java Eclipse   </p>
			</div>
		</div>
	</div>
	<div class = "d5">
		<div class = "d6">
			<button class = "button"><a href = "home.jsp">Home</a></button><br><br>
			<button class = "button"><a href = "client.jsp">Client</a></button><br><br>
			<form action = "transactionClient" method = "post"><button class = "button">Transaction</button></form>
			<form action = "inwarddeta" method = "post"><button class = "button">Inward Deta</button></form><br><br>
			<button class = "button"><a href = "print.jsp">Print</a></button><br><br>
			<button class = "button"><a href = "search.html">Search</a></button><br><br>
			<form action="histogram" method = "post"><button class = "button">Histogram</button></form><br><br>
			<button class = "button"><a href = "analytical_statistics.jsp">Analytical Stitstics</a></button><br><br>
			<button class = "button">Refresh</button><br><br>
			<button class = "button">Logout / Sign out</button><br><br>
		</div>
		<div class = "d7">
			<div class = "d8">
			<%List<Inward> inwards = (List)request.getAttribute("List");%>
				<table>
					<tr>
						<td>Id</td>
						<td>Name</td>
						<td>Amount</td>
						<td>Total_amount</td>
						<td>Discount</td>
						<td>Discription</td>
						<td>Delete</td>
						<td>Update</td>
					</tr>
					<%for(Inward inward : inwards){ %>
						<tr>
							<td><%=inward.getId() %></td>
							<td><%=inward.getName() %></td>
							<td><%=inward.getAmount() %></td>
							<td><%=inward.getTotalamount() %></td>
							<td><%=inward.getDiscount() %></td>
							<td><%=inward.getDiscription() %></td>
							<td><a href = "deleteinward?id=<%=inward.getId()%>"><button>Delete</button></a></td>
							<td><a href = "updateinward?id=<%=inward.getId()%>"><button>Update</button></a></td>
							
						</tr>
					<%} %>
				</table>
				
			</div>
			<div class ="d9">
				Deleveri item :- <br>
				
				<form action = "saveinward" method = "post">
					<input  type = "number" name = "id" placeholder = "Enter Client Id" class ="i1">
					<input type = "text" name = "name" placeholder ="Enter Company Name">
					<input type = "number" name = "amount" placeholder = "Enter amount"  class = "i1"><br><br>
					<input type = "number" name = "totalamount" placeholder = "Enter Total_amount" class ="i1">
					<input type = "number" name = "discount" placeholder = "Enter Discount">
					<input type = "text" name = "discription" placeholder = "Enter Discription"><br><br>
					
					<button class = "btt1">Clear/Reset</button>
					<button class = "btt2"> Save/Insert</button>
					<button class = "bt1">Print</button>	
				</form>
 			</div>
		</div>
	</div>
</body>
</html>