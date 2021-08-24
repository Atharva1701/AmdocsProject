<jsp:include page ="header.jsp"/>
<a href="course.jsp">Add course</a> |
<a href="coursedelete.jsp">Delete course</a> |
<a href="showall">Show all users</a>
<h3>Enter the ID to show user :</h3>
<form action="showuser" >
	<pre>
	ID     :<input type="number" name="user_id" /><br /><br />  
	        <input type="submit" value="Show" />
	</pre>
</form>
</body>
</html>