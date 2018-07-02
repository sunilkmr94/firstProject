<%@include file="Header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
  

<br>
<br>
<br>
<br>
<div class="container">
	<table class="table" align="center">
	<tr>
		<td rowspan="6">
		<img src="<c:url value="/resources/images/${ProductInfo.productId}.jpg"/>" width="300" height="300"/></td>
		<td>Product ID</td>
		<td>${ProductInfo.productId}</td>
	</tr>
	<tr>
		<td>Price</td>
		<td>${ProductInfo.price}</td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td>${ProductInfo.productName}</td>
	</tr>	
	<tr>
		<td>Category</td>
		<td>${ProductInfo.categoryId}</td>
	</tr>
	<tr>
		<td>Description</td>
		<td>${ProductInfo.prodDesc}</td>
	</tr>
	<tr>
		<td colspan="2">
		
			<form action="<c:url value="/addToCart/${ProductInfo.productId}"/>" method="get">
				<table>
					<tr><td>Quantity</td>
						<td>
						<select name="quantity">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
						</td>
						<td>
						<input type="submit" value="AddToCart" class="btn btn-success btn-block"/>
						</td>
				</table>
			</form>
		
		</td>
	</tr>
	
	</table>
</div>
<%@include file="Footer.jsp"%>