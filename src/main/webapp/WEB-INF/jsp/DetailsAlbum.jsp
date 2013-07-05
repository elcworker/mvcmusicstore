<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse Page</title>
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
	
	<h1>Details</h1>
	
	<fieldset style="width:300px">
	<legend>Album</legend>
		<c:out value="Genre : ${detailsAlbum.genre.name}" /><br/><br/>
		<c:out value="Artist : ${detailsAlbum.artist.name}" /><br/><br/>
		<c:out value="Title : ${detailsAlbum.title}" /><br/><br/>
		<c:out value="Price : ${detailsAlbum.price}" /><br/><br/>
		<c:out value="Album Art URL : ${detailsAlbum.albumArtUrl}" /></br></br> 
	</fieldset>
	
	<a href="EditAlbum?editAlbumId=${detailsAlbumId}">Edit</a> | <a href="/MVCMusicStore2/spring/StoreManager/" id="current">Back to list</a>
	
</body>
</html>