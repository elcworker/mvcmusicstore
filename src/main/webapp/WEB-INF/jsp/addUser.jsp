<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>
<link rel='stylesheet' media='screen' type='text/css' href='../Images/Site.css' />
</head>
<body>
	<%@ include file="includes/header.jsp" %>
	
	<div id="login-error">${error}</div>
	<form method="POST">
		<fieldset>
			<legend>Login information</legend>
			<label>Username:</label><br />
			<input type="text" name="loginName"/><br /> <br />
			
			<label>Password:</label><br />
			<input type="password" name="password"><br /> <br />
		</fieldset>
	
		<fieldset>
			<legend>Shipping information</legend>
			
			<label>First name:</label><br />
			<input type="text" name="firstName"><br /><br />
			
			<label>Second name:</label><br />
			<input type="text" name="lastName"><br /><br />
			
			<label>Address:</label><br />
			<input type="text" name="address"><br /><br />
			
			<label>City:</label><br />
			<input type="text" name="city"><br /><br />
			
			<label>State:</label><br />
			<input type="text" name="state"><br /><br />
			
			<label>Postal Code:</label><br />
			<input type="text" name="postalCode"><br /><br />
			
			<label>Country:</label><br />
			<input type="text" name="country"><br /><br />
			
			<label>Phone:</label><br />
			<input type="text" name="phone"><br /><br />
			
			<label>Email Address:</label><br />
			<input type="text" name="emailAddress"><br /><br />	
		</fieldset>
	
		<input type="submit" value="Create">
	</form>
</body>
</html>