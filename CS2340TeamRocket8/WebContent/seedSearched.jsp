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
<style type="text/css">
body
{
background-color:#1BBD67;
}
h1
{
color:#66CCFF;
text-align:center;
font-family:"Helvetica";
}
h2
{
color:white;
text-align:center;
font-family:"Helvetica";
font-size:25px;
}
p
{
color:white;
font-family:"Helvetica";
font-size:20px;

}
#banner {margin: 0 auto;
Width: 770px;
Height: 125px;
Border: #333300 solid 10px;
Background: #ffffff ;
Color:#ff0000;
Font-size:18px;
Text-align: right;
Padding-right: 10px;
}
</style>
</head>
<body>
<div id="banner"><IMG SRC = "http://i.imgur.com/HtUX7.png"></div>
	<%
			if (request.getParameter("sn").equals("") && request.getParameter("zn")==null)
			{
				
				%>
				<center>
				<p>
					Go back and put something please
				</center>
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
					if (!request.getParameter("sn").equals("") && request.getParameter("zn")!=null)
					{
						%>
						<center>
						<p>
							You searched for: <%= seed.getName() %><br>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else if (request.getParameter("sn").equals(""))
					{
						%>
						<center>
						<p>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else
					{
						%>
						<center>
						<p>
							You searched for: <%= seed.getName() %><br>
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
											<p>
												<%= "Name: " + users.get(i).getFirstName() + ", Username: " + users.get(i).getUsername()+ ", Common name: " + seeds.get(j).getComName() + ", Scientific name: "+ seeds.get(j).getName() + ", Zone: "+ seeds.get(j).getZone() + ", Quantity: "+ seeds.get(j).getQt()   %>
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
											<p>
												<%= "Name: " + users.get(i).getFirstName() + ", Username: " + users.get(i).getUsername()+ ", Common name: " + seeds.get(j).getComName() + ", Scientific name: "+ seeds.get(j).getName() + ", Zone: "+ seeds.get(j).getZone() + ", Quantity: "+ seeds.get(j).getQt()   %>
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
					if (!request.getParameter("sn").equals("") && request.getParameter("zn")!=null)
					{
						%>
						<center>
						<p>
							You searched for: <%= seed.getName() %><br>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else if (request.getParameter("sn").equals(""))
					{
						%>
						<center>
						<p>
							You searched for Zone: <%= seed.getZone() %><br>
						</center>
						<% 
					}
					else
					{
						%>
						<center>
						<p>
							You searched for: <%= seed.getName() %><br>
						</center>
						<% 
					}
					%>
					<center>
					<p>
						0 Search Results
						</center>
					<% 
				}
			}
		%>
		<center>
		<form action="farmerHomepage.jsp">
		
		<input type="button" value="Return to Search" onClick="location.href='searchSeed.jsp'">
		<input type="submit" value="Go to your homepage">
		
		</form>
		</center>
</body>
</html>