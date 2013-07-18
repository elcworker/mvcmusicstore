<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
	<form:form modelAttribute="registrationForm" method="POST">
		<fieldset>
			<legend>Login information</legend>
			<label>Username:</label><br />
			<form:input path="user.userName" /><br /> <br />
			
			<label>Password:</label><br />
			<form:password path="user.userPassword" /><br /> <br />
		</fieldset>
	
		<fieldset>
			<legend>Shipping information</legend>
			
			<label>First name:</label><br />
			<form:input path="order.firstName" /><br /><br />
			
			<label>Last name:</label><br />
			<form:input path="order.lastName" /><br /><br />
			
			<label>Address:</label><br />
			<form:input path="order.address" /><br /><br />
			
			<label>City:</label><br />
			<form:input path="order.city" /><br /><br />
			
			<label>State:</label><br />
			<form:input path="order.state" /><br /><br />
			
			<label>Postal Code:</label><br />
			<form:input path="order.postalCode" /><br /><br />
			
			<label>Country:</label><br />
			<form:input path="order.country" /><br /><br />
			
			<label>Phone:</label><br />
			<form:input path="order.phone" /><br /><br />
			
			<label>Email Address:</label><br />
			<form:input path="order.email" /><br /><br />	
		</fieldset>
	
		<input type="submit" value="Create">
	</form:form>
</body>
</html>