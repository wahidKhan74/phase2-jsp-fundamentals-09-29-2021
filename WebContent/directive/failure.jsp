<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Failure Response jsp page</title>
</head>
<body>

	<h3>Login Failure </h3>
	<%
		//implicit exception
		// exception.printStackTrace(response.getWriter());
	%>
	<%=exception.getMessage() %>
</body>
</html>