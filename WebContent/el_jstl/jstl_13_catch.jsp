<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_13_catch</title>
</head>
<body>

	<%--
http://localhost:8090/webdemo/el_jstl/jstl_13_catch.jsp?data=3
http://localhost:8090/webdemo/el_jstl/jstl_13_catch.jsp?data=a
 --%>
	<%
	try {

		String data = request.getParameter("data");
		int num = Integer.parseInt(data);
		out.print(num);
	} catch (NumberFormatException ex) {
		out.println(ex.toString());
	}
	%>

	<hr />

	<c:catch var="ex">
		<%--<c:set var="data" value="${param.data}" />
		<p>${data}</p> --%>
		<%
		String data = request.getParameter("data");
		int num = Integer.parseInt(data);
		out.print(num);
		%>
	</c:catch>

	<p>${empty ex ? "OK" : ex }</p>

</body>
</html>














