<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
#package_res{
	border: none;
	
}
</style>
</head>
<body>

<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>
<div style="width: 100px; height: 100px" >

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<table id="package_res" align="center">
	<tr> <td>${info.member_id } 님 </td></tr>
	<c:if test="${!empty list}">
	<c:forEach items="${list}" var="k">
		<tr><td>현재 소유하신 영화 예매권은 ${k.package_reservation} 매 입니다.</td></tr>
	</c:forEach>
	</c:if>

	<c:if test="${empty list }">
	<tr><td><h3 style="color: red">  현재 소유하신 예매권이 없습니다.</h3></td></tr>
	</c:if>

</table>
</body>
</html>