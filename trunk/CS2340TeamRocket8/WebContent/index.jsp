<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import="SeedApp.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seed Application by Team Rocket</title>
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
	
		<form action="LoginServlet">
		<center>
			
			<h1>Welcome!</h1>
			<p>Please log in using an existing account or create a new account.</p>
			
			<p>
			Username: <input type="text" name="un" size="17"/><br>
			Password: <input type="password" name="pw"size="15"/><br>

			
			<input type="submit" value="Login">
			 <%
            
			 User currentUser = (User)session.getAttribute("currentSessionUser");
			 System.out.println("user is " + currentUser);	
			 	if(currentUser!=null){
			 		currentUser.setNumTry(0);
			 	}
			 	
         	%>
         	
         	<input type="button" value="Register" onClick="location.href='createUser.jsp'">
         	</center>
		</form>
		
		
		
		
	</body>
</html>