<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Album</title>
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
	
	<h1>Delete</h1>
	
	<h2>Are you sure you want to delete this?</h2>

	<form:form modelAttribute="deleteAlbum" method="POST" action="DeleteAlbum?deleteAlbumId=${deleteAlbum.albumId}">
		<fieldset style="width:300px">
		<legend>Album</legend>
		
		<c:out value="Genre: ${deleteAlbum.genre.name}" /><br /><br />
		<c:out value="Artist: ${deleteAlbum.artist.name}" /><br /><br />
		<c:out value="Title: ${deleteAlbum.title}" /><br /><br />
		<c:out value="Price: ${deleteAlbum.price}" /><br /> <br />
		<c:out value="Album Art URL: ${deleteAlbum.albumArtUrl}" /><br /> <br />
	</fieldset>
		
	<input type="submit" value="Delete" /> | <a href="MVCMusicStore/spring/StoreManager/" id="current">Back to List</a> 
	</form:form>
</body>
</html>