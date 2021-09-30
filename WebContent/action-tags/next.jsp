<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Next JSP Page</title>
</head>
<body>
	<h1>Forwarded Request</h1>
	<h2>JSP forwarded request parameters</h2>
	Data : <%= request.getParameter("data") %> <br><br>
	Time : <%= request.getParameter("time") %> <br><br>
	Username : <%= request.getParameter("username") %> <br><br>
	Age : <%= request.getParameter("age") %> <br><br>
</body>
</html>