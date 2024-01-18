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
		height:485px;
		margin-top:1%;
		background-color:#e4f3f3;
	}
	
	.d7{
		height:100px;
		width:45%;
		margin-left:0%;
		height:485px;
		margin-top:1%;
		background-size:cover;
		background-repeat:no-repeat;
		background-color:white;
		background-color:#e4f3f3;
		
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
		width:130px;
		
	}
	.button:hover{
		border-right: 2px solid black;
		border-bottom:2px solid black;
		border-radius:4px;
		background-color:inhert;
	}
	.bt21{
		 border-left: 5px solid white;
		 background-color:white;
	}
	.b1{
		margin-top:5%;
	}
	.d8{
		width:100%;
		height:30px;
		background-color:#e4f3f3;
	}
	.d9{
		width:100%;
		height:50px;
		text-align:center;
		background-color:#e4f3f3;
		border:none;
		
	}
	.d10{
		width:99.9%;
		height:377px;
		margin-top:1px;
		display:flex;
		border:none;
	}
	.d11{
		background-color:#e4f3f3;
		width:90%;
		height:100%;
		border:none;
	}
	.d12{
		background-color:#e4f3f3;
		width:50%;
		height:100%;
		margin-left:0px;
	}
	input{
		text-align:center;
	}
	.address{
		height:90px;
		width:380px;
		margin-left:13px;	
		
	}
	.ip1{
		margin-left:46px;
		width:380px;
	}
	.ip2{
		margin-left:26px;
		width:380px;	
	}
	
	.ip4{
		margin-left:31px;
		width:380px;	
		}
	.ip5{
		margin-left:22px;
		width:380px;	
	}
	.ip6{
		margin-left:23px;
		width:380px;	
	}
	.ip7{
		margin-left:0px;
		width:380px;	
	}
	.bt11{
		margin-left:200px;
		width:200px;
	}
	.bt1{
		color:white;
		margin-left:1px;
	}
	.d13{
		margin-top:13px;
		margin-left:10px;
		width:41%;
		height:485px;
		background-color:white;
	}
	.d14{
		width:96%;
		height:92%;
		margin-left:10px;
		margin-top:10px;
		border-radius:8px;
	
	}
	table{
		border:0.1px solid ;
		width:100%;
		border-radius:8px;
	}
	td{
		border:0.1px solid ;
		
	}
	a{
		text-decoration:none;
	}
	.ii1{
		width:200px;
		margin-left:0px;
		 border-right: 5px solid white;
	}
	.bt31{
		width:200px;
		height:200px;
		margin-top:600px;
		margin-left:100px;
		text-align:center;
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
			<button class = "button" ><a href = " ">Client</a></button>
			<form action = "transactionClient" method = "post"><button class = "button">Transaction</button></form>
			<form action = "inwarddeta" method = "post"><button class = "button">Inward Deta</button></form><br><br>			
			<button class = "button" >Print</button><br><br>
			<button class = "button" ><a href = "print.jsp">Print</a></button><br><br>
			<button class = "button" ><a href = "search.html">Search</a></button><br><br>
			<form action="histogram" method = "post"><button class = "button">Histogram</button></form><br><br>
			<button class = "button" ><a href = "analytical_statistics.jsp">Analytical Stitstics</a></button><br><br>
			<button class = "button" >Refresh</button><br><br>
			<button class = "button" >Logout / Sign out</button><br><br>
		</div>
		<div class = "d7">
			<div class = "d8">
				<p>search Client Id</p>
			</div>
			<div class = "d9">
				<form>
					<input type = "number" class = "ii1" name = "id" placeholder = "Enter Client Id"><button class = "bt21"><a href = "client.jsp">Search</a></button>
				</form>
			</div>
			<div class = "d10">
				<div class = "d11">
					Client information<br><br><br>
					<form action = "saveclient" method = "post">
						 <label>Cilent Id :</label>
					<input type = "text" class = "ip1" name = "id" placeholder = "enter Cilent id"><br><br>
					 <label>Cilent name :</label>
					<input type = "text" class = "ip2" name = "name" placeholder = "Enter Client Name"><br><br>
					<label>Cilent Phone :</label>
					<input type = "tel" class = "ip5"  name = "phone" placeholder = "Enter Phone Number"><br><br>
					 <label>Cilent address :</label>
					<input type = "text"  class = "address" name = "address" placeholder = "Enter address"><br><br>
					 <label>Cilent Email :</label>
					<input type = "text" class = "ip6" name = "email" placeholder = "Enter Email"><br><br>
						 <label>Cilent Password :</label>
					<input type = "text" class = "ip7" name = "password" placeholder = "Enter password"><br><br>
					
					 
					<button class ="bt11">Save</button>
					<br><br>
					</form>
				</div>
				
				
			</div>
			
		</div>
		<div class ="d13">
			All Client Information
			<div class ="d14">
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
							<td><%=client.getPhone() %>
							<td><%=client.getAddress() %></td>
							<td><%=client.getEmail() %></td>
							<td><%=client.getPassword() %></td>
							<td ><a href="delete?id=<%=client.getId()%>"><button >delete</button></a></td>	
							<td ><a href="updateCustomerFile.jsp"><button >update</button></a></td>	
						</tr>
					<%} %>
				</table>
					<button><a href = "home.jsp" class = "bt31">OK</a></button>
			</div>	
		</div>
	</div>
</body>
</html>