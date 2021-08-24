<jsp:include page="header.jsp"/>
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
</html>