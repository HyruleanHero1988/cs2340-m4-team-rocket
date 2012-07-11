<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search for Seeds</title>
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
	<center>
	<h1> Search By: </h1>
	<form action="seedSearched.jsp">
	<p>
		Scientific Name: <input type="text" name="sn"/><br>
		And/Or<br>
		Zone: <input type="radio" name="zn" value="3"/>3<input type="radio" name="zn" value="4"/>4<input type="radio" name="zn" value="5"/>5<input type="radio" name="zn" value="6"/>6<input type="radio" name="zn" value="7"/>7<input type="radio" name="zn" value="8"/>8<input type="radio" name="zn" value="9"/>9<input type="radio" name="zn" value="10"/>10
		<center>
		<img src="http://www.aroid.org/horticulture/zonemap/zonemapusa.gif" width="432" height="262" vspace="20" align="center">
		</center>
		<input type="submit" value="Search">
		<input type="button" value="Back to Homepage" onClick="location.href='farmerHomepage.jsp'">
		
		
		
		
	</form>
	</center>
	
</body>
</html>