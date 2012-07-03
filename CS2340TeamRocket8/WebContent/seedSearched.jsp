<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "SeedApp.Seed"
    import = "SeedApp.User"
    import = "SeedApp.userDatabase"
    import="java.util.ArrayList"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results</title>
</head>
<body>
		<%
			if (request.getParameter("sn").equals("") && request.getParameter("zn").equals(""))
			{
				%>
					Go back and put something please
				<% 
			}
			else
			{
				Seed seed = new Seed(request.getParameter("sn"),
						 			request.getParameter("zn"),
						 			true
					     			);
				if (userDatabase.haveSeed(seed))
				{
					if (!request.getParameter("sn").equals("") && !request.getParameter("zn").equals(""))
					{
						%>
						<center>
							You searched for: <%= seed.getName() %><br>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else if (request.getParameter("sn").equals(""))
					{
						%>
						<center>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else
					{
						%>
						<center>
							You searched for Zone: <%= seed.getName() %><br>
						</center>
						<% 
					}
					
					ArrayList<User> users = userDatabase.getUsers();
					for (int i = 0; i < users.size(); i++)
					{
						if (users.get(i).existSeed())
						{
							ArrayList<Seed> seeds = users.get(i).getSeeds();
				
							for (int j = 0; j < seeds.size(); j++)
							{
								if (seeds.get(j).getName().equals(seed.getName()))
								{
									%> 
										
										<center>
										<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
											<tr>
												<%= "Name: " + users.get(i).getFirstName() + " Username: " + users.get(i).getUsername()+ " Seed: "+ seeds.get(j).getName() + " Zone: "+ seeds.get(j).getZone() + " Quantity: "+ seeds.get(j).getQt()   %>
											</tr>
										</TABLE>
										</center>
							
									<% 
								}
								else if(seeds.get(j).getZone() != null)
								{
									if (seeds.get(j).getZone().equals(seed.getZone()))
									{
										%>
										<center>
										<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
											<tr>
												<%= "Name: " + users.get(i).getFirstName() + " Username: " + users.get(i).getUsername()+ " Seed: "+ seeds.get(j).getName() + " Zone: "+ seeds.get(j).getZone() + " Quantity: "+ seeds.get(j).getQt()   %>
											</tr>
										</TABLE>
										</center>
							
									<% 
									}									
								}
							}
						}
					}		
				}
				else
				{
					if (!request.getParameter("sn").equals("") && !request.getParameter("zn").equals(""))
					{
						%>
						<center>
							You searched for: <%= seed.getName() %><br>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else if (request.getParameter("sn").equals(""))
					{
						%>
						<center>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else
					{
						%>
						<center>
							You searched for Zone: <%= seed.getName() %><br>
						</center>
						<% 
					}
					%>
					<center>
						0 Search Results
						</center>
					<% 
				}
			}
		%>
		<center>
		<form action="farmerHomepage.jsp">
		<input type="submit" value="Go Back">
		</form>
		</center>
</body>
</html>