<%@page import="SeedApp.userDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="SeedApp.User"
    import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New User</title>
</head>
	<body bgcolor="#ffffcc">
		
		<center>
		<h1>A List of Locked Users</h1><br>

		<% 
			ArrayList<User> users = userDatabase.getUsers();
			int count = 0;
			if (userDatabase.existLocked())
			{
				for(int i = 0; i < SeedApp.userDatabase.getSize(); i++)
				{
					if (users.get(i).isLocked())
					{
						count++;
						%> 
						<form action="congratUnlock.jsp">
							<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
	                			<tr>
	                    			<td width="50%"><%= count + ": " %></td>
	                    			<td ><input type="checkbox" name="user" value="<%= users.get(i).getUsername() %>"><%= users.get(i).getFirstName() + " " + users.get(i).getLastName() %> </td>
	                			</tr>
	         				</TABLE>
						<%
					}
				}
				 %>
				 	<input type="submit" value="Unlock Checked Users">
					</form>
					<br>
				 <%
			}
			else
			{
				%>
					No users are locked!
				<% 
					
			}
		%>
		
		<form action="adminHomepage.jsp">
		<input type="submit" value="Go Back">
		</form>
		
		</center>
		
	</body>
</html>