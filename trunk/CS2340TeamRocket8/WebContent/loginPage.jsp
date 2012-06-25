<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import="SeedApp.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seed Application by Team Rocket</title>
</head>
	<body>
		<form action="LoginServlet">
		<center>
			<h1>Seed Application</h1>
			<h2>Team Rocket(8)</h2>
			Username: <input type="text" name="un"/><br>
			Password: <input type="text" name="pw"/><br>

			
			<input type="submit" value="Login!">
			<input type="submit" value="Register">
			 <%
            	User currentUser = (User)session.getAttribute("currentSessionUser");
         	
         	%>
		</center>
		</form>
	</body>
</html>