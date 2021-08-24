<jsp:include page="header.jsp"/>
<form action="course" method="POST">
	<pre>
        Course Id      : <input type="number" name="course_id" /><br>
        Name           : <input type="text" name="c_name" /><br>
        Fees           : <input type="number" name="c_fees" /><br>
        Description    : <input type="text" name="c_desp" /><br>
        Resource       : <input type="text" name="c_resource" /><br>
                         <input type="submit" value="Add course" /><br>
	</pre>
</form>
</body>
</html>