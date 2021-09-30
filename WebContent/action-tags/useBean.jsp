<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use Bean Action tag</title>
</head>
<body>
	<h1>Use Bean Action tag</h1>
	<jsp:useBean id="productBean" class="com.simplilearn.util.ProductBean" scope="session"></jsp:useBean>
	<jsp:setProperty property="id" name="productBean"  value="37893478"/>
	<jsp:setProperty property="name" name="productBean"  value="Mac book xyz series"/>
	<jsp:setProperty property="price" name="productBean"  value="234672.423"/>
	<jsp:setProperty property="description" name="productBean"  value="It is a laptop"/>
	
	<a href="showBean.jsp">Read Product Bean</a>

</body>
</html>