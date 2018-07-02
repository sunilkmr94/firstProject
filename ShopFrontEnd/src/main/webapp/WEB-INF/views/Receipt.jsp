$<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<br>
<br>
<br>
<br>
<div class="container">

<table style="width: 100%">
	<tr>
		<td class="auto-style1" colspan="4"><strong>Receipt</strong></td>
	</tr>
	<tr>
		<td class="auto-style3" style="width: 129px">Order ID</td>
		<td class="auto-style3" style="width: 247px">${sessionScope.orderId}</td>
		<td class="auto-style3" style="width: 174px">Date</td>
		<td class="auto-style3">${sessionScope.orderdate}</td>
	</tr>
	<tr>
		<td style="width: 129px">&nbsp;</td>
		<td style="width: 247px">&nbsp;</td>
		<td style="width: 174px">&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 129px">SL #</td>
		<td class="auto-style2" style="width: 247px">Product Name</td>
		<td class="auto-style2" style="width: 174px">Quantity</td>
		<td class="auto-style2">Price</td>
	</tr>
	
		<c:forEach items="${listCartItems}" var="cartItem">
		<tr bgcolor='cyan'>
		<td style="width: 129px"></td>
		<td style="width: 247px">${cartItem.productName}</td>
		<td style="width: 174px">${cartItem.quantity}</td>
		<td>${cartItem.quantity * cartItem.price}</td>
		</tr>
		</c:forEach>
	
	<tr>
		<td class="auto-style4" colspan="3" style="height: 22px">Total Cost</td>
		<td style="height: 22px">${totalCost}</td>
	</tr>
</table>
<p class="auto-style5">Order Shipping Address</p>
<p class="auto-style5">Name :${user.username}</p>
<p class="auto-style5">Address:${user.address}</p>
<p class="auto-style5">Mobile :${user.mobileNo}</p>

<table style="width: 100%;border:1">
	<tr>
		<td class="auto-style1" style="width: 129px"></td>
		<td class="auto-style1" style="width: 129px"></td>
		<td class="auto-style1" style="width: 129px"></td>
		<td class="auto-style1" style="width: 129px"> For Company</td>
	</tr>
</table>	


</div>
