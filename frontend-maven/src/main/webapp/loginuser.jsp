<!-- <jsp:include page="header.jsp"/>
<h3>Login Page :</h3>
<form action="login" method="POST">
	<pre>
	User Id   :<input type="number" name="user_id" /><br /><br />  
	Password  :<input type="password" name="pass" /><br /><br />  
	           <input type="submit" value="login" />
</pre>
</form>
</body>
</html> -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
<style>

.main-content{
	width: 70%;
	border-radius: 20px;
	box-shadow: 0 5px 5px rgba(0,0,0,.4);
	margin: 5em auto;
	display: flex;
}
.company__info{
	background-color: #008080;
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	display: flex;
	flex-direction: column;
}

@media screen and (max-width: 640px) {
	.main-content{width: 90%;}
	.company__info{
		display: none;
	}
	.login_form{
		border-top-left-radius:20px;
		border-bottom-left-radius:20px;
	}
}
@media screen and (min-width: 642px) and (max-width:800px){
	.main-content{width: 70%;}
}
.row > h2{
	color:#008080;
}
.login_form{
	background-color: #fff;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
	border-top:1px solid #ccc;
	border-right:1px solid #ccc;
}
form{
	padding: 0 2em;
}
.form__input{
	width: 100%;
	border:0px solid transparent;
	border-radius: 0;
	border-bottom: 1px solid #aaa;
	padding: 1em .5em .5em;
	padding-left: 2em;
	outline:none;
	margin:1.5em auto;
	transition: all .5s ease;
}
.form__input:focus{
	border-bottom-color: #008080;
	box-shadow: 0 0 5px rgba(0,80,80,.4); 
	border-radius: 4px;
}
.btn{
	transition: all .5s ease;
	width: 70%;
	border-radius: 30px;
	color:#008080;
	font-weight: 600;
	background-color: #fff;
	border: 1px solid #008080;
	margin-top: 1.5em;
	margin-bottom: 1em;
}
.btn:hover, .btn:focus{
	background-color: #008080;
	color:#fff;
}
.cust{
margin:0px;
padding:0px;}
</style>
</head>
<body>
		<div class="container-fluid">
		<div class="row main-content bg-success text-center">
			<div class="col-md-6 cust">
				<img src="https://static.vecteezy.com/system/resources/previews/000/180/334/non_2x/vector-online-education-and-e-learning-illustration.jpg" alt="Elearning Login" style='height: 100%; width: 100%; object-fit: contain'/>
			</div>
			<div class="col-md-6 col-xs-12 col-sm-12 login_form ">
				<div class="container-fluid">
					<div class="row">
						<h2>Log In</h2>
					</div>
					<div class="row">
						<form action="loginuser" method="POST" class="form-group">
							<div class="row">
								<input type="number" name="user_id" id="user_id" class="form__input" placeholder="Enter User Id as Username">
							</div>
							<div class="row">
								<!-- <span class="fa fa-lock"></span> -->
								<input type="password" name="pass" id="pass" class="form__input" placeholder="Password">
							</div>
							<div class="row">
								<input type="submit" value="login" />
							</div>
						</form>
					</div>
					<div class="row">
						<p>Don't have an account? <a href="registration.jsp">Register Here</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	
</body>
</html>


