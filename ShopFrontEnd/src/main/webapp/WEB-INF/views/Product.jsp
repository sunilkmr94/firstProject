<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<br>
<br>
<br>
<br>
<table align="center">
	<form:form method="post" action="InsertProduct"
		modelAttribute="product" enctype="multipart/form-data">
		<tr>
			<td>Product Name</td>
			<td><form:input path="productName" />
		</tr>
		<tr>
			<td>Category</td>
			<td>
			<form:select path="categoryId">
				<%-- <form:option value="0" label="--select--"/>
				<form:option value="1" label="Men"/> --%>
				<form:options items="${categoryList}"/>
			</form:select>
			</td>
		</tr>
		<tr>
			<td>Supplier</td>
			<td><form:input path="supplierId"/></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><form:input path="price"/></td>
		</tr>
		<tr>
			<td>Stock</td>
			<td><form:input path="stock"/></td>
		</tr>

		<tr>
			<td>Product Description</td>
			<td><form:input path="prodDesc"/></td>
		</tr>
		<tr>
			<td>Product Image</td>
			<td>
				<form:input type="file" path="pimage"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="Insert Product"/>
			</td>
		</tr>

	</form:form>
