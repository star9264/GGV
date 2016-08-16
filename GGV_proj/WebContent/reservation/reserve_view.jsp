<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GGV : 예매확인</title>
</head>
<body>
	<h2>예매 확인</h2>

	<table border="1">
		<thead>
			<tr align="center">
				<td width="70">예매번호</td>
				<td width="120">예약일자</td>
				<td width="50">시간</td>
				<td width="200">제목</td>
				<td width="200">좌석</td>
				<td width="70">예매취소</td>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${!empty list}">
					<c:forEach items="${list}" var="k">
						<tr align="center">
							<td>${k.reserve_idx}</td>
							<td>${k.reserve_date}</td>
							<td>${k.reserve_time}</td>
							<td>${k.title}</td>
							<td>${k.reserve_seat1} ${k.reserve_seat2} ${k.reserve_seat3} 
								${k.reserve_seat4} ${k.reserve_seat5} ${k.reserve_seat6} 
								${k.reserve_seat7} ${k.reserve_seat8}</td>
							<td><a href="reserve_cancel.do?reserve_idx=${k.reserve_idx}"
								onclick="return confirm('예매를 취소하시겠습니까?')"
								style="text-decoration: none">취소</a></td>
						</tr>
					</c:forEach>
				</c:when>

				<c:otherwise>
					<tr align="center">
						<td colspan="6"><h3>예매 정보가 없습니다.</h3></td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</body>
</html>