<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="SeedApp.User"
    import="java.util.ArrayList"
    import="SeedApp.userDatabase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unlocked User</title>
</head>
<body>

    
     <form action="adminHomepage.jsp">
		<center>
			<%
			
				String select[] = request.getParameterValues("user");
			
				ArrayList<User> users = userDatabase.getUsers();
			
				for(int i = 0; i < SeedApp.userDatabase.getSize(); i++)
				{
					if (select != null && select.length != 0) 
					{
						for (int j = 0; j < select.length; j++) 
						{
							if (users.get(i).getUsername().equals(select[j]))
							{
								users.get(i).setLocked(false);
								%>
								User <%= users.get(i).getUsername() %> has been unlocked.<br>
								
								<% 
							}
						}
					}
				}
			%>
		<input type="submit" value="Done">
		</center>
		</form>
</body>
</html>