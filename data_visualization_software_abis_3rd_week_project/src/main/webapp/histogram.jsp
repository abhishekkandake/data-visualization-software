<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Histogram</title>
<style type="text/css">
	
	body{
		background-color: gold;
	}
	.h1{
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
		width:43%;
		height:477px;
		background: #171f1a	;	
		margin-top:15px;
		margin-left:10px;
	}
	.d8{
		margin:10px;
		border:2px solid black;
		height:150px;
		background-color:#bbf0ec;
		border-radius:4px;
		font-weight: bold;
		font-style: italic;
		font-size: 20px;
	}
	.d9{
		margin:10px;
		border:2px solid black;
		height:295px;
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
		width:99.5%;
		height:150px;
		border:none;
		margin-top:15px;
	}
	.i1{
		margin-left:80px;
		
	}
	.i2{
		border-top-left-radius: 10px;
	}
	.i3{
		border-top-right-radius: 10px;
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
		margin-left:35%;
		height:25px;
		border-top-left-radius: 10px;
		border-top-right-radius: 10px;
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
	.dd1{
		height:30px;
		border:2px solid black;
		margin-top:5%;
		background-color:rgba(144,218,229,255);
		color:white;
		display:flex;
		align-items:center;
		justify-content:center;
		font-weight:bold;
		border-top-right-radius: 15px;;
		border-bottom-right-radius: 15px;;
	}
	.dd2{
		height:30px;
		border:2px solid black;
		margin-top:3px;
		color:white;
		background-color:#063970;
		display:flex;
		align-items:center;
		justify-content:center;
		font-weight:bold;
		border-top-right-radius: 15px;;
		border-bottom-right-radius: 15px;;
	}
	.dd3{
		height:30px;
		border:2px solid black;
		margin-top:3px;
		background-color:#abdbe3;
		color:white;
		display:flex;
		align-items:center;
		justify-content:center;
		font-weight:bold;
		border-top-right-radius: 15px;;
		border-bottom-right-radius: 15px;;
	}
	.dd4{
		height:30px;
		border:2px solid black;
		margin-top:3px;
		background-color:#873e23;
		color:white;
		display:flex;
		align-items:center;
		justify-content:center;
		font-weight:bold;
		border-top-right-radius: 15px;;
		border-bottom-right-radius: 15px;;
	}
	.dd5{
		height:30px;
		border:2px solid black;
		margin-top:3px;
		background-color:#e28743;
		color:white;
		display:flex;
		align-items:center;
		justify-content:center;
		font-weight:bold;
		border-top-right-radius: 15px;;
		border-bottom-right-radius: 15px;;
	}
	.dd6{
		height:30px;
		border:2px solid black;
		margin-top:3px;
		background-color:rgb(238,238,228);
		color:white;
		display:flex;
		align-items:center;
		justify-content:center;
		font-weight:bold;
		border-top-right-radius: 15px;;
		border-bottom-right-radius: 15px;;
	}
	.dd7{
		height:30px;
		border:2px solid black;
		margin-top:3px;
		background-color:#1e81b0;
		color:white;
		display:flex;
		align-items:center;
		justify-content:center;
		font-weight:bold;
		border-top-right-radius: 15px;;
		border-bottom-right-radius: 15px;;
	}
	.d88{
		border:2px solid black;
		width:43%;
		height:477px;
		margin-left:20px;
		margin-top:14px;
	}
	<%String summ2 = (String)request.getAttribute("List4"); %>
	<%String summ = (String)request.getAttribute("List2"); %>
	<%String summ3 = (String)request.getAttribute("List3"); %>
	
	.x-box{
	width:30vh;
	height: 30vh;
	border-radius: 50%;
	background-color: green;
	background: repeating-conic-gradient(
		from 0deg,
		#ff264a 0deg <%=summ2%>deg,
				#feec1e 40deg <%=summ%>deg,		#12cbc4 100deg 360deg
				
		
		
	);
}
.x-box-cont{
	font-size: 30px;
	padding-left: 50px;
}
.x-box-cont .h11{
	font-size: 30px;
	text-transform: uppercase;
}
.x-box-cont strong{
	display: block;
	margin-bottom: 15px;
	
}
.d88{
	font-family: Arial;
	font-size:16px;
	margin:0;
	background: #171f1a;
	color: #fff;
	display: flex;
	align-items: center;;
	justify-content: center;
	margin-left:0px;
	margin-top:15px;
	border:none;
}
</style>
</head>
<body>
		<h1 class = "h1">data visualization software </h1>
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
			<button class = "button"><a href = "analytical_statistics.jsp">Analytical Stitstics</a></button><br><br>
			<form action="histogram" method = "post"><button class = "button">Histogram</button></form><br><br>
			<button class = "button">Refresh</button><br><br>
			<button class = "button">Logout / Sign out</button><br><br>
		</div>
		<div class = "d7">
			<%String count = (String)request.getAttribute("List"); %>
			
			<%String sum = (String)request.getAttribute("List2"); %>
			
			<%String sum2 = (String)request.getAttribute("List3"); %>
			
			<%String sum3 = (String)request.getAttribute("List4"); %>
			
			<%String sum4 = (String)request.getAttribute("List5"); %>
			
			<%String sum5 = (String)request.getAttribute("List6"); %>
		
			<%String sum6 = (String)request.getAttribute("List7"); %>
			
			<div class = "dd1" style = "width:<%=count%>px">
				TELICOM
			</div>
			<div class = "dd2" style = "width:<%=sum%>px">
				TCS
			</div>
			<div class = "dd3" style = "width:<%=sum2%>px">
				INFOSYS
			</div>
			<div class = "dd4" style = "width:<%=sum3%>px">
				ABis
			</div>
			<div class = "dd5" style = "width:<%=sum4%>px">
				WIPRO
			</div>
			<div class = "dd6" style = "width:<%=sum5%>px">
				MAHENDRA
			</div>
			<div class = "dd7" style = "width:<%=sum6%>px">
				TOYOTA
			</div>
		</div>
		<div class = "d88">
			<div class = "x-box"></div>
			<div class = "x-box-cont">
				<h1 class = "h11">Seasion of The Year</h1>
				<strong style="color:#ff264a">ABis</strong>
				<strong style="color:#feec1e">TCS</strong>
				<strong style="color:#12cbc4">INFOSYS</strong>
			</div>
		</div>
	</div>
	
		
	
</body>
</html>