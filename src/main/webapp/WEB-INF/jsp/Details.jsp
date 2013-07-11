<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details Page</title>
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
		<h1><c:out value="${detailedAlbum.title}" /></h1>
		
		<img alt="Album art of album: ${detailedAlbum.title}" src="../Images/placeholder.gif"></img><br/><br/>
		<div style="height:20px"></div>
		<h2><c:out value="Genre: ${detailedAlbum.genre.name}" /></h2>
		<h2><c:out value="Artist: ${detailedAlbum.artist.name}" /></h2>
		<h2><c:out value="Price: ${detailedAlbum.price}" /></h2>
		
		<a href="/MVCMusicStore2/spring/ShoppingCart?addedAlbumId=${albumId}">Add to Cart</a>		
	
</body>
</html>