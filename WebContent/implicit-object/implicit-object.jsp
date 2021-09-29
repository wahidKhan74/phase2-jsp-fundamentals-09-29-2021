<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object Demo</title>
</head>
<body>
	<h1>Implicit Object Demo</h1>
	<%
		//implicit object : request
		String office = request.getParameter("office");
		if (office != null) {
			//implicit object : response
			response.setContentType("text/html");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.sendRedirect("response-redirect.jsp?office=" + office);
		}
	%>
	<%
		String error = request.getParameter("error");
		if (error != null) {
			if (error.equals("1")) {
				throw new RuntimeException("Exception has been raised !");
			}
		}
	%>

	<%
		//implicit object : out 
		out.print("<p>This is a print object to write data to output stram </p>");

		//implicit object : request
		out.print("</p>The server port :" + request.getServerPort() + "</p>");
		out.print("</p>The server name :" + request.getServerName() + "</p>");
		out.print("</p>The request content type :" + request.getContentType() + "</p>");

		//implicit object : page
		out.print("</p>The jsp page name :" + page.toString() + "</p>");

		// implicit object :> pageContext
		pageContext.setAttribute("userId", UUID.randomUUID());
		pageContext.setAttribute("userName", "John1234");

		out.print("</p>The page context userId :" + pageContext.getAttribute("userId") + "</p>");
		out.print("</p>The page context userId :" + pageContext.getAttribute("userName") + "</p>");
	%>

	<a href="implicit-object.jsp?office=HeadOffice">Show usage of
		request & response object</a>
	<br>
	<br>
	<a href="implicit-object.jsp?error=1">Show Error Redirect</a>
</body>
</html>