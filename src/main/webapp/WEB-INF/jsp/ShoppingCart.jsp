<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Cart</title>
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

	<h2>Review your cart :</h2>
	<a href="LoginPage">Checkout >></a>
	<div style="height:20px"></div>
	<table>
		<thead>
			<tr>
				<th>Album Name</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
		</thead>
		<tbody>
			<c:out value="${removedAlbumInfo}" />
			
			<c:forEach items="${albumList}" var="curAlbum" varStatus="status">
				<tr>
					<td><a href="Store/Details?albumId=${curAlbum.albumId}"><c:out value="${curAlbum.title}" /></a></td>
					<td><c:out value="${curAlbum.price}" /></td>
					<td><c:out value="1" /></td>
					<td><a href="ShoppingCart?deletedAlbumNum=${status.index}"><c:out value="Remove from Cart" /></a></td>
				</tr>
			</c:forEach>
			<tr>
				<td>Total</td>
				<td></td>
				<td></td>
				<td>${totalPrice}</td>
			</tr>
		</tbody>
	</table>	
</body>
</html>