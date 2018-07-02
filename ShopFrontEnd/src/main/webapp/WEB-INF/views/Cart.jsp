<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<br>
<br>
<br>
<br>
<div class="container">

<table align="center" class="table" >
	<tr bgcolor='cyan'><td colspan='6'> <center> Your Cart </center></td></tr>
	<tr bgcolor='cyan'>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
		<td>SubTotal</td>
		<td></td>
		<td>Operation</td>
	</tr>
		
		<c:if test="${not empty listCartItems}">
		<c:forEach items="${listCartItems}" var="cartdetails">
		<form action="<c:url value="/updateCartItem/${cartdetails.cartItemId}"/>" method="get">
		<tr bgcolor='cyan'>
			<td>${cartdetails.productName}</td>
			<td>${cartdetails.price}</td>
			<td><input type="text" name="qty" value="${cartdetails.quantity}"/></td>
			<td>${cartdetails.price * cartdetails.quantity}</td>
			<td><img src="<c:url value="/resources/images/${cartItem.productId}.jpg"/>" width="50" height="50"/></td>
			<td>
			<a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>">Delete</a>
			<input type="submit" value="Update"/>
			</td>
		</tr>
		</form>
		</c:forEach>
		</c:if>
		<c:if test="${empty listCartItems}">
			<tr bgcolor='cyan'><td colspan="6"><center>You Have No Items in Cart</center></td></tr>
		</c:if>
		<tr bgcolor="cyan">
			<td colspan="3">Total Cost</td>
			<td>${totalCost}</td>
			<td colspan="2"></td>
		</tr>
		<tr bgcolor="cyan">
			<td colspan="3"><a href="<c:url value='/ProductPage'/>"><b>Continue Shopping</b></a></td>
			<td colspan="3"><a href="<c:url value='/OrderConfirm'/>"><b>Checkout</b></a></td>
		</tr>
		
	
</table>

</div>

<%@include file="Footer.jsp"%>