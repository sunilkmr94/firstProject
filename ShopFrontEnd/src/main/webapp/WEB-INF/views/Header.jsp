<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="Login" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGIN</a>
    <c:url value='/Login' var='login'/>
    <a href="Register" class="w3-bar-item w3-button w3-padding-large w3-hide-small">REGISTER</a>
    <c:url value='/Register' var='register'/>
    <a href="ContactUs" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>
    <a href="AboutUS" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ABOUT</a>
     <!-- <a href="product" class="w3-bar-item w3-button w3-padding-large w3-hide-small">PRODUCT</a> -->
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">CATEGORY<i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="ProductPage" class="w3-bar-item w3-button">Men</a>
        <c:url value='/ProductPage' var='products'/>
        <a href="#" class="w3-bar-item w3-button">Women</a>
        <a href="#" class="w3-bar-item w3-button">Accessories</a>
      </div>
    </div>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
    <a href="Cart" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-shopping-cart"></i></a>
     <c:url value='/Cart' var='cart'/>
  </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="login" class="w3-bar-item w3-button w3-padding-large">LOGIN</a>
  <a href="contact" class="w3-bar-item w3-button w3-padding-large">CONTACT</a>
  <a href="product" class="w3-bar-item w3-button w3-padding-large">CATEGORY</a>
</div>
</body>
</html>