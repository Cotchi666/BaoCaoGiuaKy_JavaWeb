<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="salary"  value="${2000*2}" />
	
	<p>
		Before Remove Value:
		<c:out value="${salary}" />
	</p>
	<c:remove var="salary" />
	<p>
		After Remove Value:
		<c:out value="${salary}" />
	</p>
	<ul>
</html>