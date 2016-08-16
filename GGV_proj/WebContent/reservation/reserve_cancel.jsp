<%@page import="com.hb.db.Member_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function delete_confirm() {
		alert("예매 취소 완료");
		<%
		Member_VO member = (Member_VO)session.getAttribute("info");
		String member_id = member.getMember_id();
		response.sendRedirect("reserve_view.do?member_id="+member_id);
		%>
	}
</script>
</head>
<body onload="delete_confirm()">
	
</body>
</html>