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
Height: 200px;
Border: #66CCFF solid 10px;
Background: #ffffff ;
Color:#ff0000;
Font-size:18px;
Text-align: right;
Padding-right: 10px;
}




</style>

</head>
	<body>
	<div id="banner"><IMG SRC = "http://i.imgur.com/TOiLy.png"></div>
      </head>
	
 

         <center>
         <p>
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
           	</p>
           	
			<form action="loginPage.jsp">
			
			<input type="submit" value="Log Out">		
			
			</form>
			
         </center>

      </body>
	
   </html>