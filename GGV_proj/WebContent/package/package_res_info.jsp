<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div id="menu">
		<jsp:include page="../home/menu_bar.jsp" />
	</div>
	<div style="width: 500px; height: 600px;">
	
	
	</div>
	<table>
	<tbody name="package_res_info">
	<c:if test="${!empty list }">
		<c:forEach items="${list}" var="k">
		<tr>
		<th>아이디</th>
		<th>예약번호</th>
		<th>예약 날짜</th>
		<th>예약한 패키지명</th>
		<th>매수</th>
		</tr>
		
		<tr>
		<td>${k.reservation_num}</td>
		<td>${k.member_id }</td>
		<td>${k.reservation_date }</td>
		<td>${k.reservation_package }</td>
		<td>${k.package_su}</td>
		
		</tr>
		
		</c:forEach>
	
	</c:if>
	
	
	</tbody>
	</table>

</body>
</html>