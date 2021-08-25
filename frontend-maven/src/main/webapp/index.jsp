<!--  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Learning Portal</title>
</head>
<body>
	<h2>Welcome to E-learning portal</h2>
	<hr>
	<a href="welcome">Home</a> |
	<a href="registration.jsp">Register</a> |
	<a href="contact.jsp">Contact</a> |
	<a href="feedback.jsp">Feedback</a> |
	<a href="login.jsp">Login</a> 
</body>
</html> -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-learning Portal</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
	rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<style>
.opt {
	
}

div {
	font-family: 'Roboto', sans-serif;
}

a {
	color: inherit;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: none;
	text-shadow: 2px 2px #ABD569;
}

.row-cont {
	margin: 20px auto;
}

.con {
	height: 100px;
	line-height: 100px;
	margin-bottom: 30px;
	margin-top: 30px;
	padding: 25px;
}

.conn {
	border: 2px solid #009432;
	border-radius: 10px;
	transition: 0.3s;
	font-size: 20px;
}

.conn:hover {
	background-color: #7bed9f;
}

.hd {
	font-size: 55px;
	height: 60px;
	line-height: 60px;
	margin-bottom: 25px;
	margin-top: 25px;
	text-align: center;
}

body {
	min-height: 110vh;
	background-image: url("learning.jpg");
	background-color: #4ca1af;
	background-repeat: no-repeat;
	background-size: 1920px 1080px;
}
</style>


</head>
<body>
	<div class="container">
		<div class="hd">
			<b>E-LEARNING PORTAL</b>
		</div>
		<div class="row row-cont">
			<div class="col-lg-6 text-center con">
				<div class="conn">
					<a href="registration.jsp"> Register Now! </a>
				</div>
			</div>
			<div class="col-lg-6 text-center con">
				<div class="conn">
					<a href="contact.jsp"> Contact Us </a>
				</div>
			</div>
			<div class="col-lg-6 text-center con">
				<div class="conn">
					<a href="feedback.jsp"> Give Feedback </a>
				</div>
			</div>
			<div class="col-lg-3"></div>
			<div class="col-lg-6 text-center con">
				<div class="conn">
					<a href="login.jsp"> Login(Administrator) </a>
				</div>
			</div>
			<div class="col-lg-6 text-center con">
				<div class="conn">
					<a href="loginuser.jsp"> Login(User) </a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>