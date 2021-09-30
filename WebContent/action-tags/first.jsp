<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First JSP</title>
</head>
<body>
	<jsp:forward page="next.jsp">
		<jsp:param value="Welcome to JSP Action tag" name="data"/>
		<jsp:param value="4:40" name="time"/>
		<jsp:param value="John Smith" name="username"/>
		<jsp:param value="30" name="age"/>
	</jsp:forward>

</body>
</html>