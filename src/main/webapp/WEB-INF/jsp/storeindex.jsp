<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Store Page</title>
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
	
	<h1>Browse Genres</h1>
	<div style="height:20px"></div>
	<h3>Select from ${genreCount} genres:</h3>
	<c:forEach items="${genreList}" var="myGenre">
		<c:url var="albumUrl" value="Browse?genre=${myGenre.name}" />
		<h3 style="color:Red"><li><a href="${albumUrl}"><c:out value="${myGenre.name}" /> </li> </h3>
	</c:forEach>
</body>
</html>