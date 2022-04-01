<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vi du </title>
</head>

<body >
	
	<c:set var="fullname" value="Nguyen Ngoc Chien"></c:set>
	<c:out value="${fullname }"></c:out>
	
	
	<c:set var="accountBalance" value="12345.6789" />
     <h3>accountBalance=<c:out value="${accountBalance}"/></h3>
     
     The Account Balance can be displayed using various ways:
     
     <p>
        formatNumber (type='currency'):
        <strong>
           <fmt:formatNumber value="${accountBalance}" type="currency"/>
        </strong>
     </p>
    
     <p>
</body>
</html>