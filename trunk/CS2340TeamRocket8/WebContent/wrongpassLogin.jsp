<%@ page language="java" 
      contentType="text/html; charset=windows-1256"
      pageEncoding="windows-1256"
      import="SeedApp.User"
   %>

   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"    
      "http://www.w3.org/TR/html4/loose.dtd">

   <html>

      <head>
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>Invalid Login</title>
      </head>
	
      <body>
         <center>
         <%
            User currentUser = (User)session.getAttribute("currentSessionUser");
         	
         %>
         	You have tried <%= currentUser.getNumTry()+ " times" %>
         	<br>
         
            Sorry, wrong password!
            
           
         </center>
      </body>
	
   </html>