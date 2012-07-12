<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New User</title>
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
		<form action="RegisterServlet">
		<center>
		<h1>Create a New User</h1>
		<p>
		Username: <input type="text" name="un"/><br>
		Password: <input type="text" name="pw"/><br>
		First Name: <input type="text" name="fn"/><br>
		Last Name: <input type="text" name="ln"/><br>
		
		<input type="submit" value="Create">
		<input type="button" value="Cancel" onClick="location.href='index.jsp'">
		</center>
		
	</body>
</html>