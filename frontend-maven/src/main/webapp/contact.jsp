<jsp:include page="header.jsp"/>
<h3>Contact Page :</h3>
     <form action="contact" method="POST">
        <pre>
        User Id      : <input type="number" name="user_id" /><br>
        Name         : <input type="text" name="name" /><br>
        Email        : <input type="email" name="email" /><br>
        Phone#       : <input type="number" name="phone_no" /><br>
        Message      : <input type="text" name="message" /><br>
        Contact Id.  : <input type="number" name="contact_id" /><br>  
                       <input type="submit" value="Enter Contact" /><br>
       </pre>
     </form>
</body>
</html>