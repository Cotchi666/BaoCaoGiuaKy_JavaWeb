<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<c:set var="id" value="1"></c:set>
	<!--MySQL  -->
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/sinhvien" user="root" password="" />


	<!-- query -->
	<sql:query dataSource="${myDS}" var="sv">
      SELECT * from sv where id=?
      <sql:param value="${id}"></sql:param>
    </sql:query>
	<table border="1">
		<c:forEach var="row" items="${sv.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.userName}" /></td>
			</tr>
		</c:forEach>
	</table>

	<!-- transaction -->
	<sql:transaction dataSource="${myDS}">
		<sql:query var="sv" " >
      SELECT * from sv where id=?
			<sql:param value="${id}"></sql:param>
		</sql:query>
		<table border="1">
			<c:forEach var="row" items="${sv.rows}">
				<tr>
					<td><c:out value="${row.id}" /></td>
					<td><c:out value="${row.userName}" /></td>
				</tr>
			</c:forEach>
		</table>
		<sql:update>
      INSERT INTO sv(userName) VALUES ('hong aaaaa')
      </sql:update>
	<p>sau khi update:</p>
	<sql:query var="sv">
      SELECT * from sv
    </sql:query>
	<table border="1">
		<c:forEach var="row" items="${sv.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.userName}" /></td>
			</tr>
		</c:forEach>
	</table>
	</sql:transaction>
	
	<!-- update -->
	<%-- <sql:update dataSource="${myDS }">
      INSERT INTO sv(userName) VALUES ('hong aaaaa')
      </sql:update>
	<p>sau khi update:</p>
	<sql:query dataSource="${myDS}" var="sv">
      SELECT * from sv
    </sql:query>
	<table border="1">
		<c:forEach var="row" items="${sv.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.userName}" /></td>
			</tr>
		</c:forEach>
	</table> --%>
	<!--SQL Server  -->
	<%-- <sql:setDataSource var="myDS"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;instance=DESKTOP-ISGCAJJ;databaseName=DATA007;" user="sa"
		password="sa" />
		<c:catch 
	<sql:query dataSource="${myDS}" var="sv">
      SELECT * from user1
    </sql:query>
    ></c:catch>
	<table border="1">
		<c:forEach var="row" items="${sv.rows}">
			<tr>
			<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.username}" /></td>
				<td><c:out value="${row.password}" /></td>
				<td><c:out value="${row.fullname}" /></td>
			</tr>
		</c:forEach>
	</table> --%>
</body>
</html>