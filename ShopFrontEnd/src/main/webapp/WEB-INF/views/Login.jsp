<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<title>Login</title>

<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 25%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<body>
<br>
<br>
<br>

	<div id="login">
		<form action="validate" method="post">
			<%-- <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" class="form-control input-lg" />  --%>
			<h2>Login</h2>
			<div class="imgcontainer">
    <img src="resources/images/avatar.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
  <label>
    <input type="text" name="username" placeholder="Enter username" required /> 
	<input type="password" name="password" placeholder="Enter password" required /> 
	<input type="submit" id="login-btn" value="Login" />
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
		</form>
	</div>
</body>

</html>
