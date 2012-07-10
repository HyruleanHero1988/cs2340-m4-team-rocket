<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "SeedApp.Seed"
    import = "SeedApp.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Added New Seed</title>
</head>
<body>
<center>
	<%
		if (request.getParameter("cn").equals("") || request.getParameter("sn").equals("") || request.getParameter("zn")==null || request.getParameter("qt").equals(""))
		{
			%>
				Needs Common name, Scientific name, Zone, and Quantity! please go back and Fill this out<br>
				<form action="createSeed.jsp">
           		<input type="submit" value="Go Back">
           		</form>
			<% 
		}
		else
		{
			Seed seed = new Seed(request.getParameter("cn"), 
					request.getParameter("sn"),
					request.getParameter("zn"),
					request.getParameter("gt"),
					request.getParameter("hi"),
					request.getParameter("gs"),
					request.getParameter("qt")
					);
			User currentUser = (User)session.getAttribute("currentSessionUser");
			currentUser.addSeed(seed);

			%>
			Added <%= seed.getName()%>
			<form action="farmerHomepage.jsp">
   				<input type="submit" value="Done">
   			</form>
   	<%
		}
	 %>
</center>

</body>
</html>