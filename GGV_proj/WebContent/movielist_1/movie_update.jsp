<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<form method="post">
		<table align="center">
			<c:forEach var="k" items="${list}">
			<tr>
				<td><a href="movie_update_go.do?movie_idx=${k.movie_idx}">${k.title}</a></td>
			</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>