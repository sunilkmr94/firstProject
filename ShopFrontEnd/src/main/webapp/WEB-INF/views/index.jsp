<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>HomePage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>
<%@include file="Header.jsp" %>
<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="<c:url value='/resources/images/image1.jpg'/>" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Mens Wear</h3>
      <p><b>We have the best collection of all time!</b></p>   
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="<c:url value='/resources/images/image2.jpg'/>" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Womens Wear</h3>
      <p><b>Try it to look better.</b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="<c:url value='/resources/images/image3.jpg'/>" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Accessories </h3>
      <p><b>Look Good feel good.</b></p>    
    </div>
  </div>

  <!-- The StopShop Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h2 class="w3-wide">STOPSHOP</h2>
    <p class="w3-opacity"><i>We love to look good</i></p>
    <p class="w3-justify">we have the new collection of dress that suits you the best visit us once will never forget the moment</p>
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
        <p>Men</p>
        <img src="<c:url value='/resources/images/image1.jpg'/>" alt="Random Name" style="width:60%">
      </div>
      <div class="w3-third">
        <p>Women</p>
        <img src="<c:url value='/resources/images/image3.jpg'/>" alt="Random Name" style="width:60%">
      </div>
      <div class="w3-third">
        <p>Accessories</p>
        <img src="<c:url value='/resources/images/image2.jpg'/>" style="width:60%">
      </div>
    </div>
  </div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000);
}
</script>
<%@include file="Footer.jsp"%>
</body>
</html>
