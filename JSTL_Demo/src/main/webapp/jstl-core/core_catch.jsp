<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:catch var="xuLyLoi">
		<%
		int x = 5 / 0;
		%>
	</c:catch>
	<c:if test="${xuLyLoi != null}">
		<p>Loi ne: ${xuLyLoi.message }</p>
	</c:if>

</body>






</html>