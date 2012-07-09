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
         
           You have tried to login too many times. Your account is locked.<br>
           Please contact administrator!
           
           <form action="loginPage.jsp">
			<center>
			<input type="submit" value="Back to Login Page">		
			</center>
			</form>
            
           
         </center>
      </body>
	
   </html>