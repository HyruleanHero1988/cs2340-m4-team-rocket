<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New User</title>
</head>
	<body bgcolor="#ffffcc">
		<form action="RegisterServlet">
		<center>
		<h1>Create a New User</h1><br>
		Username: <input type="text" name="un"/><br>
		Password: <input type="text" name="pw"/><br>
		First Name: <input type="text" name="fn"/><br>
		Last Name: <input type="text" name="ln"/><br>
		
		 <TABLE style="background-color: #ECE5B6;" WIDTH="50%">
<!--                <tr width="100%">-->
<!--                <td >Student Name</td>-->
<!--                    <td ><input type="text" name="name"></td>-->
<!--                </tr>-->
                <tr>
                    <td width="20%">Type of User</td>
                    <td width="25%"><input type="radio" name="type" 
                        value="admin">Admin</td>
                    <td width="30%"><input type="radio" name="type" value="farmer">Farmer</td>
                </tr>
         </TABLE>
		
		
		<input type="submit" value="Create">
		</center>
		</form>
		<form action="adminHomepage.jsp">
		<center>
		<input type="submit" value="Cancel">
		</center>
		</form>
	</body>
</html>