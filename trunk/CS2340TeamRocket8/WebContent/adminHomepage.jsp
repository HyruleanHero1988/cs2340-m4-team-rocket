 <%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="SeedApp.User"
   %>
 
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

   <html>

      <head>
      <body bgcolor="#ffffcc">
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   Admin Logged Successfully   </title>
      </head>
	
      <body>

         <center>
            <%
            	User currentUser = (User)session.getAttribute("currentSessionUser"); //(UserBean(session.getAttribute("currentSessionUser")))
            %>
			
            Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %>
            <br>
           	View List of Locked Users
           	<form action="viewLockedUsers.jsp">
           	<input type="submit" value="View">
           	</form>
           	Create Users (including another admin)
           	<form action="createUserAdmin.jsp">
           	<input type="submit" value="Create">
           	</form>
           	View all users
           	<form action="viewAllUser.jsp">
           	<input type="submit" value="View">
           	</form>
           	</form>
			<form action="loginPage.jsp">
			<center>
			<input type="submit" value="Log Out">		
			</center>
			</form> 
           	
         </center>
	
      </body>
	
   </html>