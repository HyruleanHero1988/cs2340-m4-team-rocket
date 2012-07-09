<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search for Seeds</title>
</head>
<body>
	<center>
	<h1> Search By: </h1>
	<form action="seedSearched.jsp">
		Scientific Name: <input type="text" name="sn"/><br>
		And/Or<br>
		Zone: <input type="radio" name="zn" value="3"/>3<input type="radio" name="zn" value="4"/>4<input type="radio" name="zn" value="5"/>5<input type="radio" name="zn" value="6"/>6<input type="radio" name="zn" value="7"/>7<input type="radio" name="zn" value="8"/>8<input type="radio" name="zn" value="9"/>9<input type="radio" name="zn" value="10"/>10
		<center>
		<img src="http://www.aroid.org/horticulture/zonemap/zonemapusa.gif" width="432" height="262" vspace="20" align="center">
		</center>
		<input type="submit" value="Search">
		<input type="button" value="Cancel" onClick="location.href='farmerHomepage.jsp'">
		
		
		
		
	</form>
	</center>
	
</body>
</html>