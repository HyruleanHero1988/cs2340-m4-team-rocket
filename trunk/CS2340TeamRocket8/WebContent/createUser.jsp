<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New User</title>
</head>
	<body>
		<form action="RegisterServlet">
		<center>
		<h1>Create a New User</h1><br>
		Username: <input type="text" name="un"/><br>
		Password: <input type="text" name="pw"/><br>
		First Name: <input type="text" name="fn"/><br>
		Last Name: <input type="text" name="ln"/><br>
		
		<input type="submit" value="Create">
		</center>
		</form>
		<form action="loginPage.jsp">
		<center>
		<input type="submit" value="Cancel">
		</center>
		</form>
	</body>
</html>