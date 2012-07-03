<%@page import="SeedApp.userDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="SeedApp.User"
    import="java.util.ArrayList"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Users</title>
</head>
	<body bgcolor="#ffffcc">
		
		<center>
		<h1>A List of Users</h1><br>

		<% 
			ArrayList<User> users = userDatabase.getUsers();
			int count = 0;
				for(int i = 0; i < SeedApp.userDatabase.getSize(); i++)
				{
						count++;
						%> 
							<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
	                			<tr>
	                    			<td width="50%"><%= count + ": " %></td>
	                    			<td > <%= users.get(i).getFirstName() + " " + users.get(i).getLastName()  %></td>
	                			</tr>
	         				</TABLE>
						<%
				}
		%>
		
		<form action="adminHomepage.jsp">
		<input type="submit" value="Go Back">
		</form>
		
		</center>
		
	</body>
</html>