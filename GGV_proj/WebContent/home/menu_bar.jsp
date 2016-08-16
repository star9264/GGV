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
</script>
</head>
<body>
	<div>
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
										<dd>
											<a href="#home">Home</a>
										</dd>
									</dl>
									<dl>
										<dt><a>예매</a></dt>
										<dd>
											<a href="movielist.do">영화 예매</a>
										</dd>
										<dd>
											<a href="#home">예매 조회</a>
										</dd>
									</dl>
									<dl>
										<dt><a>영화</a></dt>
										<dd>
											<a href="#home">1</a>
										</dd>
										<dd>
											<a href="#home">2</a>
										</dd>
										<dd>
											<a href="#home">3</a>
										</dd>
									</dl>

								</td>
								<td>
									<dl>
										<dt><a>스토어</a></dt>
										<dd>
											<a href="#home">각자 할꺼 넣기 남는건 지우기</a>
										</dd>
										<dd>
											<a href="#home">2</a>
										</dd>
										<dd>
											<a href="#home">3</a>
										</dd>
									</dl>
									<dl>
										<dt><a>나의 메가박스</a></dt>
										<dd>
											<a href="#home">1</a>
										</dd>
										<dd>
											<a href="#home">2</a>
										</dd>
										<dd>
											<a href="#home">3</a>
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
											<a href="#home">2</a>
										</dd>
										<dd>
											<a href="#home">3</a>
										</dd>
									</dl>
									<dl>
										<dt><a>회원서비스</a></dt>
										<dd>
											<a href="#home">1</a>
										</dd>
										<dd>
											<a href="#home">2</a>
										</dd>
										<dd>
											<a href="#home">3</a>
										</dd>
									</dl>

								</td>
								<td>
									<dl>
										<dt><a>회사소개</a></dt>
										<dd>
											<a href="#home">각자 할꺼 넣기 남는건 지우기</a>
										</dd>
										<dd>
											<a href="#home">2</a>
										</dd>
										<dd>
											<a href="#home">3</a>
										</dd>
									</dl>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</li>
			<div style="margin-top: 20px">
				<li><a href=###>HOME</a></li>
				<li><a href=#>영화</a></li>
				<li><a href=#>영화관</a></li>
				<li><a href=#>스토어</a></li>
				<li><a href=#>로그인</a></li>
			</div>
		</ul>
	</div>
</body>
</html>