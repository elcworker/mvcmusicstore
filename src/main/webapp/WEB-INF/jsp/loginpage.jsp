<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel='stylesheet' media='screen' type='text/css' href='../Images/Site.css' />
</head>
<body>
	<div id="header">
		<h1>SPRIG MVC MUSIC STORE</h1>
		
		<ul id="navlist">
			<li class="first"><a href="/MVCMusicStore2/" id="current">Home</a></li>
			<li><a href="/MVCMusicStore2/spring/Store/">Store</a></li>
		</ul>
	</div>
	<div id="login-error">${error}</div>
	
	<form:form modelAttribute="loginUser" method="POST">
	<h2>Log On</h2>
	<h3>Please enter your username and password.<a href="/MVCMusicStore2/spring/AddUser">Register</a>if you don't have any account</h3>
	<fieldset>
		<legend>Account Information</legend>
		
		<h3>Username:</h3>
		<form:input path="userName" />
		<br /> <br />
		
		<h3>Password:</h3>
		<form:input path="userPassword" />
		<br /><br />
		<input type="submit" value="Login">
	</fieldset>
	</form:form>
	
	

</body>
</html>