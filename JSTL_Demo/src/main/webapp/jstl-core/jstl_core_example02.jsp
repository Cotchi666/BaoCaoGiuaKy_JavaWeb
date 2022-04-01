<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách sinh viên</title>
</head>
<body style="margin:0 auto; width:1024px">
	<h1>Danh sách sinh viên</h1>
	<table width="100%" border="1" cellpadding="1" cellspacing="1">
		<tr>
			<th width="10%">Mã SV</th>
			<th width="50%">Tên SV</th>
		</tr>
		<c:forEach items="${studentlist }" var="objSV">
		<tr> 
			<td>${objSV.id }</td>
			<td>${objSV.name }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>