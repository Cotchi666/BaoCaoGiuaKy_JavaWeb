<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:url value="https://www.tutorialspoint.com/jsp/jstl_core_url_tag.htm"
		var="aaa" />
	<a href=" ${aaa }">TEST</a>
</body>
</html>