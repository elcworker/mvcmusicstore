<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Album</title>
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
	
	<h1>Create</h1>
	
	<form:form modelAttribute="createAlbum" method="POST">
		<fieldset style="width:300px">
		
		<h3>Genre</h3>
		<select name="genreSelected">
			<c:forEach items="${genres}" var="myGenre">
				<option value="${myGenre.genreId}">${myGenre.name}</option>
			</c:forEach>
		</select>
		
		<br/>
		
		<h3>Artist</h3>
		<select name="artistSelected">
			<c:forEach items="${artists}" var="myArtist">
				<option value="${myArtist.artistId}">${myArtist.name}</option>
			</c:forEach>
		</select>

		<br/><br/>
		
		<h3>Title</h3>
		<form:input name="txtTitle" path="title" />
		<br/><br/>
		
		<h3>Price</h3>
		<form:input path="price" />
		<br/><br/>
		
		<h3>AlbumArtUrl</h3>
		<form:input path="albumArtUrl" />
		<br/><br/>
		
		<input type="submit" value="Save" />
		<br/><br/>
			
		</fieldset>
	</form:form>
</body>
</html>