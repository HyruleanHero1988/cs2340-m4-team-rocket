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
font-family:"Times New Roman";
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
         <center>
         <%
            User currentUser = (User)session.getAttribute("currentSessionUser");
         	
         %>
         <p>
         	You have tried <%= currentUser.getNumTry()+ " times" %>
         	<br>
            Sorry, wrong password!
            <br>
            Your account will be locked after 3 tries unless attempting to access admin account!
            
            <form action="loginPage.jsp">
			<center>
			<input type="submit" value="Back to Login Page">		
			</center>
			</form>
            
         </center>
      </body>
	
   </html>