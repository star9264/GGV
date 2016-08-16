<%@page import="java.util.List"%>
<%@page import="com.hb.db.Movie_VO"%>
<%@page import="com.hb.db.Member_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#menu{
		padding-bottom: 100px;
		padding-left: 100px;
	}
</style>  
</head>
<body>
	<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<h2>이름 : ${info.name}</h2>
	<h2>아이디 : ${info.member_id}</h2>
	<div>
			<jsp:include page="../movielist_1/movie_list01.jsp"/>
	</div>
</body>
</html>