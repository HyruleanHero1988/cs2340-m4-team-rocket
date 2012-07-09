 <%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="SeedApp.User"
         import="SeedApp.Seed"
         import="java.util.ArrayList"
   %>
 
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

   <html>

      <head>
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   Farmer Logged Successfully   </title>
      </head>
	
      <body>

         <center>
            <%
            	User currentUser = (User)session.getAttribute("currentSessionUser"); //(UserBean(session.getAttribute("currentSessionUser")))
            %>
			
            Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %>
            <br>
            My seeds:
            <br> 
            <%
            	if (currentUser.existSeed())
            	{
            		ArrayList<Seed> seeds = currentUser.getSeeds();
            		for(int i = 0; i < seeds.size(); i++)
            		{
            			int j = i+1;
            			%>
            				<%= j +": "+ seeds.get(i).getName() %>, 
            				
            				<%= "Quantity: "+ seeds.get(i).getQt() %>
            				<br>
            			<% 
            		}
            	}
            	else
            	{
            		%>
            			You have no seeds. Add some!<br>
            		<% 
            	}
            %>
            
            Search for Available Seeds
           	<form action="searchSeed.jsp">
           	<input type="submit" value="Search">
           	</form>
           	Create Seeds
           	<form action="createSeed.jsp">
           	<input type="submit" value="Create">
           	</form>
           	</br>
           	
			<form action="loginPage.jsp">
			
			<input type="submit" value="Log Out">		
			
			</form>
			
         </center>

      </body>
	
   </html>