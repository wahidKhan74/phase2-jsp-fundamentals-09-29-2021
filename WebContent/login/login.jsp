<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<form action="login-submit.jsp" , method="post">
		<fieldset>
			<legend>Login Form</legend>
			Email : <input type="text" name="email", id="email"> <br><br>
			Password : <input type="password" name="password", id="password"> <br><br>
			<input type="submit" value="Login">
		</fieldset>
	</form>
</body>
</html>