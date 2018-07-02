<%@page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
    
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<title> Register </title>
</head>
<body>
<%@ include file="Header.jsp" %>
<c:if test="${!flag}">
<form action="InsertUserDetail" name = "Register" method="post">
</c:if>
<form action="/InsertUserDetail" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="form-control input-lg" />
    <div class="modal-dialog">
      <!--<div class="modal-content">-->
        <div class="modal-header">
		  <h1 class="text-center"> Register </h1>
		<!--</div>-->
		<div class="modal-body">
		   <form class="col-md-12 center block">
		   
		      <div class="form-group">
			   <label>Name</label>
			      <c:if test="${!flag}">
			        <input type="text" style="height:30px" name="customerName" id="customerName" class="form-control input-lg" placeholder="Enter Your Name" required>
			      </c:if>
			  </div>
			  
			  <div class="form-group">
			     <label>Username</label>
			        <c:if test="${!flag}">
			          <input type="text" style=" height:30px" name="username" id="username" class="form-control input-lg" placeholder="username" required >
			        </c:if>
			  </div>
			  <div class="form-group">
			      <label>Password</label>
			         <c:if test="${!flag}">
			           <input type="password" style=" height:30px" name="password" id="password" class="form-control input-lg" placeholder="Atleast 4 character" required>
			         </c:if>
			  </div>
			  <div class="form-group">
			      <label>Email</label>
			         <c:if test="${!flag}">
			           <input type="text" style=" height:30px" name="emailId" id="emailId" class="form-control input-lg" placeholder="Ex xyz@gmail.com" required>
			         </c:if>
			  </div>
			  
			   <div class="form-group">
			      <label>Mobile No</label>
			        <c:if test="${!flag}">
			          <input type="text" style=" height:30px" name="mobileNo" id="Mobile" class="form-control input-lg" placeholder="Enter your contact number" required>
			        </c:if>
			  </div>
			  <div class="form-group">
			      <label>Address</label>
			          <c:if test="${!flag}">
			            <input type="text"  style=" height:30px"  name="address" id="address" class="form-control input-lg" placeholder="Enter your full address" required>
			          </c:if>
			  </div>
			  <div class="form-group">
			      <input type="submit" class="btn btn-block btn-lg btn-success" value="Submit" >
			  </div>
			  
			  
			  <script language="JavaScript">
function formSubmitter(formTag, messageTag){
  document.getElementById(messageTag).innerHTML = "Registered Successfully.";
  document.forms[formTag].submit();
}
</script>


 
			  
			 
		   </form>
		</div>
	  </div>
	</div>
</body>
</html>