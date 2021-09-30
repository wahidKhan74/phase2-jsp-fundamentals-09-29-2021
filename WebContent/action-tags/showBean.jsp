<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Bean</title>
</head>
<body>

	<jsp:useBean id="productBean" class="com.simplilearn.util.ProductBean"
		scope="session"></jsp:useBean>
	Product Id : <jsp:getProperty property="id" name="productBean"/> <br><br>
	Product Name : <jsp:getProperty property="name" name="productBean"/> <br><br>
	Product Price : <jsp:getProperty property="price" name="productBean"/> <br><br>
	Product Description : <jsp:getProperty property="description" name="productBean"/>

</body>
</html>