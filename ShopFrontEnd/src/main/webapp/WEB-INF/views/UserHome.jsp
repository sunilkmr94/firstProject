<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="Header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
body {
    background-color:lightgreen;
}
</style>
<body>
<br>
<div id="top">
    <!-- this assumes your User class has a username field with a valid getter -->
   <h3> Hello <b>${user.username}</b>....This is an User page</h3>
</div>
<ul class="nav navbar-nav">
      
              <li><a href="ProductPage" class="nav navbar-nav">Product</a></li>
 				<c:url value='/ProductPage' var='productspage'/>
 				<li><a href="/ShopFrontEnd/Login" nav navbar-nav navbar-right>LOGOUT</a></li>
 					 <c:url value='/ShopFrontEnd/Login' var='Logout'/>
        </ul>


</body>
</html>