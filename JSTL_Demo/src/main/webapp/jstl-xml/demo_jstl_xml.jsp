<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<html>
<head>
<title>JSTL x:out Tags</title>
</head>

<body>
	<h3>Books Info:</h3>

	<c:import url="dienthoais.xml" var="dienthoai"></c:import>

	<x:parse xml="${dienthoai}" var="output" />
	<b>The title of the first book is</b>:
	<table border="1">
		<tr>
			<th>name</th>
			<th>price</th>
		</tr>
		<x:forEach select="$output//dienthoais/dienthoai">
			<tr>
				<td colspan="1"><x:out select="name" /></td>
				<td colspan="1"><x:out select="price" /></td>
			</tr>
		</x:forEach>
	</table>

	<x:set var="a"
		select="$output/dienthoais/dienthoai[1]/name/text()" />
	<c:out value="${a}" />
</body>
</html>