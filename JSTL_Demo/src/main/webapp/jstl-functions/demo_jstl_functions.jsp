<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- contains -->
	<c:set var="xxx" value="Huong hai ba Bon"></c:set>
	<c:if test="${fn:contains(xxx,'hai') }">
		<p>Tim thay: hai</p>
	</c:if>
	<c:if test="${fn:contains(xxx,'Hai') }">
		<p>Tim thay: Hai</p>
	</c:if>


	<p>su dung containsignoreCase</p>
	<!--containsignoreCase	  -->

	<c:if test="${fn:containsIgnoreCase(xxx,'hai') }">
		<p>Tim thay: hai</p>
	</c:if>
	<c:if test="${fn:containsIgnoreCase(xxx,'Hai') }">
		<p>Tim thay: Hai</p>
	</c:if>

	<p>
		so ky tu trong chuoi:
		<c:out value="${fn:length(xxx)}"></c:out>
	</p>


</body>
</html>