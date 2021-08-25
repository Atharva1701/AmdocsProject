<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300&family=Roboto:wght@300&display=swap"
	rel="stylesheet">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>User Actions</title>


<style>
div {
	font-family: 'Roboto', sans-serif;
}

.row-cnt {
	margin: 30px auto;
}

.form-cont {
	background-color: #f5f6fa;
	padding: 20px;
}

.form-style {
	font-size: 22px;
}

.reg {
	margin-left: 40%;
}

.navbar {
	transition: all 0.4s;
}

.navbar .nav-link {
	color: #fff;
}

.navbar .nav-link:hover, .navbar .nav-link:focus {
	color: #fff;
	text-decoration: none;
}

.navbar .navbar-brand {
	color: #fff;
	font-size:35px;
}

.navbar.active {
	background: #fff;
	box-shadow: 1px 2px 10px rgba(0, 0, 0, 0.1);
}

.navbar.active .nav-link {
	color: #555;
}

.navbar.active .nav-link:hover, .navbar.active .nav-link:focus {
	color: #555;
	text-decoration: none;
}

.navbar.active .navbar-brand {
	color: #555;
}

@media ( max-width : 991.98px) {
	.navbar {
		background: #fff;
	}
	.navbar .navbar-brand, .navbar .nav-link {
		color: #555;
	}
}

.text-small {
	font-size: 0.9rem !important;
}

body {
	min-height: 110vh;
	background-color: #4ca1af;
	background-image: linear-gradient(135deg, #4ca1af 0%, #c4e0e5 100%);
}

#learn {
	text-align:center;
	width: 50%;
	font-size:45px;
}
#portal {
	margin : 0 auto;
	width: 60%;
	font-size:15px;
}

</style>
</head>
<header class="header">
    <nav class="navbar navbar-expand-lg fixed-top py-3">
        <div class="container" ><a href="index.jsp" class="navbar-brand text-uppercase font-weight-bold">E-Learning Portal</a>
            <br><br>
            
            <div id="navbarSupportedContent" class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a href="courseenroll.jsp" class="nav-link text-uppercase font-weight-bold">Enroll a course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    <li class="nav-item"><a href="showonlyuser?user_id=<%= request.getAttribute("user_id") %>" class="nav-link text-uppercase font-weight-bold">Show Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    <li class="nav-item"><a href="index.jsp" class="nav-link text-uppercase font-weight-bold">Log out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<body>
<div class ="container text-uppercase font-weight-bold" id="learn">Hello ,<%=  request.getAttribute("user_id")%></div>

</body>
</html>