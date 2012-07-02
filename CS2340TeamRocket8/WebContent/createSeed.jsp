<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New User</title>
</head>
	<body>
		<form action="congratNewSeed.jsp">
		<center>
		<h1>Create Seed</h1><br>
		Common Name: <input type="text" name="cn"/><br>
		Scientific Name: <input type="text" name="sn"/><br>
		Zone: <input type="text" name="zn"/><br>
		Growing Tips: <input type="text" name="gt"/><br>
		Harvesting Information: <input type="text" name="hi"/><br>
		Growing Season: <input type="text" name="gs"/><br>
		Quantity: <input type="text" name="qt"/><br>
		
		<input type="submit" value="Create">
		</center>
		</form>
		<form action="farmerHomepage.jsp">
		<center>
		<input type="submit" value="Cancel">
		</center>
		</form>
	</body>
</html>