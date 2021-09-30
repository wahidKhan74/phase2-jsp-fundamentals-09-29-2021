<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag Lib Directives</title>
</head>
<body>
	<h1>Custom tags by JSTL</h1>
	
	<core:set var="data" value="Welcomt to JSTL custom taglib" scope="session"></core:set>
	Message : <core:out value="${data}" ></core:out> <br><br>
	
	
	<core:set var="salary" value="${854854.453 }" scope="session"></core:set>
	Salary : <core:out value="${salary}" ></core:out> <br><br>
	
	<core:if test="${salary>20000}">
		<p> Salary is OK </p>
	</core:if>
	
	<core:set var="now" value="<%= new Date() %>" />
	The Current Date & Time is : <fmt:formatDate value="${now}" pattern="dd-MM-yyyy hh:mm:ss"/>

</body>
</html>