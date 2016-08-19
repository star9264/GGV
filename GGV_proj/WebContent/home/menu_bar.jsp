<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">

	ul {
    list-style-type: none;
    margin: 0;
    margin-left : 100px;
    padding: 0;
    overflow: hidden;
    border: 1px solid white;
    background-color: white;
  	color: #c9c9c9;
  	text-align: center;
  	text-decoration: none;
  	position: fixed; 
  	width: 1000px;
	}
	
	li{
		display: block;
		float: left;
		color: #c9c9c9;
		text-decoration: none;
		border: 1px solid white;
		font-size: 30px;
		margin-top: 20px;
		margin-right: 30px;
	}
	li a{
		text-decoration: none;
		color: #c9c9c9;
	}
	li a:hover{
		color : #6ed3cf;
	}
	
#dropdown:HOVER #dropdown-content{
	display: block;
}
#dropdown-content {
 	display: none; 
 	position: fixed;
	min-width: 160px;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	background-color: #EBEBEB;
}

#dropdown-content a {
	color : #999999;
 	padding: 5px 20px; 
	text-decoration: none;
	display: block;
	text-align: left;
/* 	padding-top: 0px; */ 
}
#dropdown-content a:HOVER{
	color: #666666;
}
dt{
	font-size: 20px;
	font-weight: bold;
}
dl{
	font-size: 18px;
}

table tr{
	margin-top: 100px;
	vertical-align: top;
}
	
</style>
<script type="text/javascript">
	function imgChg(img) {
		document.img_hover.src=img;
	}
	function logout() {
		var chk = confirm("접속을 종료하시겠습니까?");
		if(chk==true){
			location.href="logout.do";
			alert("접속이 종료되었습니다."); 
		}else{
			return;
		}
	}
</script>
</head>
<body>
	<div style="position:relative; z-index: 5;">
		<ul id="list">
			<li id="site">
				<div id="dropdown">
					<!--<button onclick="myFunction()" class="dropbtn">Dropdown</button> -->			
					<div id="img"><img onclick="myFunction()" class="dropbtn" src="img/logo.PNG"
						onmouseover="imgChg('img/map.PNG')"
						onmouseout="imgChg('img/logo.PNG')" name="img_hover" height="70px"
						width="70px"></div>
					<div  id="dropdown-content">
						<table>
							<tr>
								<td>
									<dl>
										<dt><a>Home</a></dt>
										
									</dl>
									<dl>
										<dt><a>예매</a></dt>
										<dd>
											<a href="movielist.do">영화 예매</a>
										</dd>
										<dd>
											<a href="reserve_view.do?member_id=${info.member_id}">예매 조회</a>
										</dd>
									</dl>
									<dl>
										<dt><a>영화</a></dt>
										<dd>
											<a href="movie_list01.do">박스오피스</a>
										</dd>
										<dd>
											<a href="movie_list02.do">최신개봉작</a>
										</dd>
										<dd>
											<a href="movie_list03.do">상영예정작</a>
										</dd>
										<c:if test="${info.grade=='관리자'}">
											<dd>
											<a href="new_movie.do">새 영화 입력</a>
											</dd>
											<dd>
											<a href="movie_update.do">영화 정보 수정,삭제</a>
											</dd>
										</c:if>
									</dl>

								</td>
								<td>
									<dl>
										<dt><a>스토어</a></dt>
										<dd>
											<a href="package_main.do">GGV 패키지</a>
										</dd>
										<dd>
											<a href="package_res_info.do?member_id=${info.member_id}">GGV 패키지 예약 확인</a>
										</dd>
									</dl>
									<dl>

										<dt><a>나의 메가박스</a></dt>
										<dd>
										<c:if test="${!empty info}">
											<a href="q_list.do?type=ask&id=${info.member_id}">나의 문의내역</a>
										</c:if>
										<c:if test="${empty info}">
											<a href="login_alert.do">나의 문의내역</a>
										</c:if>
										</dd>
									</dl>


								</td>
								<td>
									<dl>
										<dt><a>고객센터</a></dt>
										<dd>
										<c:if test="${!empty info}">
											<a href="q_write.do">1:1 문의사항</a>
										</c:if>
										<c:if test="${empty info}">
											<a href="login_alert.do">1:1 문의사항</a>
										</c:if>
										</dd>
										<dd>
											<a href="notice_list.do?type=notice">공지사항</a>
										</dd>
										<dd>
											<a href="fq_list.do">자주하는 질문</a>
										</dd>
									</dl>
									<dl>
										<dt><a>회원서비스</a></dt>
										<c:if test="${empty info.member_id}">
										<dd>
											<a href="join.do">회원가입</a>
										</dd>
										<dd>
											<a href="info_find.do">아이디 / 비밀번호 찾기</a>
										</dd>
										</c:if>
										<c:if test="${!empty info.member_id}">
										<dd>
											<a href="info_update_form.do">정보수정</a>
										</dd>
										<dd>
											<a href="pwd_update_go.do">비밀번호 변경</a>
										</dd>
										</c:if>
									</dl>

								</td>
								<td>
									<dl>
										<dt><a>회사소개</a></dt>
										
									</dl>
									<c:if test="${info.grade=='관리자' }">
										<dl>
											<dt><a>관리자 모드</a></dt>
											<dd>
												<a href="admin_qlist.do?type=ask">문의내역 답변달기</a>
											</dd>
										</dl>
									</c:if>
								</td>
								<c:if test="${!empty info.member_id}">
								<td>
									<input onclick="logout()" type="button" value="로그아웃" style="background-color: #9068be; outline: none; color: white; border: none; cursor: pointer; font-weight: bolder;"/>
								</td>
								</c:if>
							</tr>
						</table>
					</div> 
				</div>
			</li>
			<div style="margin-top: 20px">
				<li><a href=###>HOME</a></li>
				<li><a href=movie_list01.do>영화</a></li>
				<li><a href=#>영화관</a></li>
				<li><a href="package_main.do">스토어</a></li>
				<c:if test="${empty info}">
				<li><a href="login.do">로그인</a></li>
				</c:if>
			</div>
		</ul>
	</div>
</body>
</html>