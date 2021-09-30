<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page errorPage="failure.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Submitted</title>
</head>
<body>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email==null || email.equals("") || password == null || password.equals("")) {
			throw new RuntimeException("Login Failure due to invalid user input !");
		} else{
			if(email.equals("admin@gmail.com") && password.equals("admin@123")){
				out.print("<h3> Login Sucessfull ! <h3>");
			} else{
				throw new RuntimeException("Login Failed due to Invalid Credentials !");
			}
		}
	
	%>

</body>
</html>