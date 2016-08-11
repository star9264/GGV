<%@page import="com.hb.db.Member_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	Member_VO member_VO = (Member_VO)request.getAttribute("member_vo");
	session.setAttribute("info", member_VO);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
input{
	outline: none;
}
#top{
	list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: white;
    text-decoration: none;
    text-shadow: none;
    text-transform: none;
}

#top li a {
    display: block;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    border: 1px solid silver;
    width: 75px;
    font-weight: bold;
    text-shadow: none;
    text-transform: none;
}

#btn_ggv{
	color: white;
	background-color: #9068be;
	width: 75px;
}

#top li{
	float: left;
}

</style>
</head>
<body>
	<form method="post">
		<table>
			<thead align="center">
				<span>
					<ul id="top" style="position: relative; left: 400px; top: -10px">
						<li><img alt="img" src="../logo.PNG"></li>
						<li><a  id="btn_ggv" href="#">GGV</a></li>
						<li><a  id="top_menu" href="#">홈</a></li>
						<li><a  id="top_menu" href="#">영화</a></li>
						<li><a  id="top_menu" href="#">영화관</a></li>
						<li><a  id="top_menu" href="package/package_main.do">스토어</a></li>
						<li><a  id="top_menu" href="login.jsp">로그인</a></li>
					</ul>
				</span>
			</thead>
			<tbody>
			
			</tbody>
			<tfoot>
				<h5>
				<div align="center" style="background-color: #312c32; color: silver;">
					회사소개 | 채용정보 | 제휴/광고 | 이용약관 | 개인정보취급방침 | 고객센터
				</div>
 				<div align="center" style="background-color: #312c32; color: silver;">
 					서울 마포구 백범로 23 거구장
 				</div>
 				<div align="center" style="background-color: #312c32; color: silver;">
					대표자명 김윤경 | 개인정보관리책임자 영업본부 본부장 명원준
				</div>
				<div align="center" style="background-color: #312c32; color: silver;">
					사업자등록번호 211-99-99999 | 통신판매업신고번호 제 999호
				</div>
				<div align="center" style="background-color: #312c32; color: silver;">
					Copyright 2016 by GGV. All rights reserved
				</div>
				</h5>
			</tfoot>
		</table>
	</form>
</body>
</html>