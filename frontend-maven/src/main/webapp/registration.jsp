<!-- <jsp:include page="header.jsp"/>
<h3>Registration Page :</h3>
     <form action="register" method="POST">
        <pre>
        User Id      : <input type="number" name="user_id" /><br>
        Name         : <input type="text" name="name" /><br>
        Phone#       : <input type="number" name="phone_no" /><br>
        Email        : <input type="email" name="email" /><br>
        Address      : <input type="text" name="address" /><br>
        Reg. Date    : <input type="date" name="reg_date" /><br>
        Password     : <input type="password" name="password"/><br>
        Upload Photo : <input type="text" name="upload_photo"/><br>
                       <input type="submit" value="Sign Up" /><br>
       </pre>
     </form>
</body>
</html> -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300&family=Roboto:wght@300&display=swap" rel="stylesheet">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>New Registration</title>


<style>
div{
	font-family: 'Roboto', sans-serif;
}
.row-cnt{
	margin: 30px auto;
}
.form-cont{
background-color: #f5f6fa;
padding: 20px;
}
.form-style{
font-size: 18px;
}
.reg{
	margin-left: 40%;
}
</style>
</head>
<body>
	<div class="container">
	<div class="row row-cnt">
	<div class="col-lg-3"></div>
		<div class="col-lg-6 form-cont">
		<div class="card">
			<div class="card-body">
				<b><h3 class="card-title text-center">Register New User</h3></b>
			<form action="register" method="POST" class="form-style">
			<div class="form-group">
				<label for="id">User Id</label>
				<input class="form-control" type="number" name="user_id" required/>
			</div>
			<div class="form-group">
				<label for="name">Name</label>
				<input class="form-control" type="text" name="name" required/>
			</div>
			<div class="form-group">
				<label for="phone">Phone No.</label>
				<input class="form-control" type="number" name="phone_no" required/>
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input class="form-control" type="email" name="email" required/>
			</div>
			<div class="form-group">
				<label for="address">Address</label>
				<input class="form-control" type="text" name="address"/>
			</div>
			<div class="form-group">
				<label for="date">Registration Date(YYYY-MM-DD)</label>
				<input class="form-control" type="date" name="reg_date" required/>
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input class="form-control" type="password" name="password" required/>
			</div>
			<div class="form-group">
				<label for="photo">Upload Photo</label>
				<input class="form-control" type="text" name="upload_photo" required/>
			</div>
			<input type="submit" value="Register!" /><br>
		</form>
			</div>
		</div>
		</div>
	</div>
	
	</div>
</body>
</html>