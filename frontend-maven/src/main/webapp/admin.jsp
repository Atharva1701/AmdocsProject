<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
     <form action="admin" method="POST">
        <pre>
        User Id      : <input type="number" name="id" /><br>
        Name         : <input type="text" name="name" /><br>
        Password     : <input type="password" name="password" /><br> 
        Email        : <input type="email" name="email" /><br>
                       <input type="submit" value="Make Admin" /><br>
       </pre>
     </form>
</body>
</html>