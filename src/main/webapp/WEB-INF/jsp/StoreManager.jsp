<%@page import="com.elworker.MVCMusicStore2.Entities.Album" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="albumModel" type="com.elworker.MVCMusicStore2.Models.AlbumModel" scope="request" />

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
	
	<h1>Index</h1>
	<h2 style="color:Red"><a href="/MVCMusicStore2/spring/StoreManager/CreateAlbum">Create New</a></h2>
	
	<table>
		<thead>
			<tr>
				<th>Genre</th>
				<th>Artist</th>
				<th>Title</th>
				<th>Price</th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%for (Album myAlbum : albumModel.findAllAlbums()) { %>
				<tr>
					<td><%= myAlbum.getGenre().getName()%></td>
					<td><%= myAlbum.getArtist().getName()%></td>
					<td><%= myAlbum.getTitle()%></td>
					<td><%= myAlbum.getPrice()%></td>
					<td><a href="EditAlbum?editAlbumId=<%= myAlbum.getAlbumId()%>">Edit</a></td>
					<td><a href="DetailsAlbum?detailsAlbumId=<%= myAlbum.getAlbumId()%>">Details</a></td>
					<td><a href="DeleteAlbum?deleteAlbumId=<%= myAlbum.getAlbumId()%>">Delete</a></td>
				</tr>
			<%}%>
		</tbody>
					
	</table>

</body>
</html>