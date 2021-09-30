<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="failure.jsp" isErrorPage="false"%>
<%@ page buffer="8kb" info="Jsp page directive example" %>
<%@ page import="java.util.Date, java.util.List, java.util.ArrayList" %>
<%@ page import="com.simplilearn.util.StringUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Page Directives</title>
</head>
<body>
	<h1>JSP Page Directives</h1>
	
	Server data & time : <%= new Date() %>
	<%
		List<String> listOfComp = new ArrayList<String>();
		listOfComp.add("Apple");
		listOfComp.add("Dell");
		listOfComp.add("Microsoft");
		listOfComp.add("Smplilearn");
		listOfComp.add("Comviva");
		out.print("<ul>");
		
		for(String comp: listOfComp){
			out.print("<li>"+comp+"</li>");
		}
		out.print("<ul>");
	%><br><br>
	<div>
	Sample Text :  <%= StringUtil.convertToLowerCase("Today is A good Day! ") %> <br><br>
	Sample Text :  <%= StringUtil.convertToUpperCase("Today is A good Day! ") %><br><br>
	
	Sample Text :  <%= StringUtil.encrypt("Today is a good Day! ") %><br><br>
	Sample Text :  <%= StringUtil.decrypt("Today is A good Day! ") %><br><br>
	
	</div>
	
</body>
</html>