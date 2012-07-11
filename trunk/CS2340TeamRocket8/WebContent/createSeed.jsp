<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New Seed</title>
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
		<form action="congratNewSeed.jsp">
		<center>
		<h1>Create Seed</h1>
		<p>
		Common Name: <input type="text" name="cn"/><br>
		Scientific Name: <input type="text" name="sn"/><br>
		Zone: <input type="radio" name="zn" value="3"/>3<input type="radio" name="zn" value="4"/>4<input type="radio" name="zn" value="5"/>5<input type="radio" name="zn" value="6"/>6<input type="radio" name="zn" value="7"/>7<input type="radio" name="zn" value="8"/>8<input type="radio" name="zn" value="9"/>9<input type="radio" name="zn" value="10"/>10
		<center>
		<img src="http://www.aroid.org/horticulture/zonemap/zonemapusa.gif" width="432" height="262" vspace="20" align="center">
		</center>
		<p>
		Growing Tips: <input type="text" name="gt"/><br>
		Harvesting Information: <input type="text" name="hi"/><br>
		Growing Season: <input type="text" name="gs"/><br>
		Quantity: <input type="text" name="qt"/><br>
		
		<input type="submit" value="Create">
		<input type="button" value="Back to Homepage" onClick="location.href='farmerHomepage.jsp'">
		</center>
		</form>
		
	</body>
</html>