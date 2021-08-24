<jsp:include page="header.jsp"/>
<h3>Feedback Page :</h3>
     <form action="feedback" method="POST">
        <pre>
        User Id      : <input type="number" name="user_id" /><br>
        Name         : <input type="text" name="name" /><br>
        Email        : <input type="email" name="email" /><br>
        Feedback Id. : <input type="number" name="f_id" /><br>  
        Feedback     : <input type="text" name="feedback" /><br>
                       <input type="submit" value="Give Feedback" /><br>
       </pre>
     </form>
</body>
</html>