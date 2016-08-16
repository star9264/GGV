<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	#cap{
		padding-left: 200px;
		padding-bottom: 50px;
	}
	#search table{
		padding-left: 200px;
		width: 1000px;
		text-align: right;
	}
	#tb table{
		padding-top: 10px;
		width : 1000px;
		padding-left: 200px;
		border-spacing : 0px;
		font-size: 15px;
		margin: 0px;
	}
	#tb table th{
		padding: 5px 10px;
	}
	#tb table td{
		text-align: center;
		border: 1px solid #dddddd;
		padding: 5px 10px;
	}
	.no{width: 20%}
	.subject{width: 50%}
	.regdate{width: 30%}
	.title{
		background-color: #eeeeee;
		color: #9068be;
	}

	
</style>
</head>
<body>
	<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<div id="cap">
		<h2 style="color: #9068be;"> 공지사항</h2>
		> GGV의 최신 소식을 알려드립니다.
	</div>
	<div id="search">
		<!-- <table>
			<tr><td align="right">
				<input type="text" id="word" />
				<button>검색</button>
			</td></tr>
		</table> -->
	</div>
	<div id="tb">
		<c:if test="${info.grade == '관리자' }">
		<div style="width: 1000px" align="right">
	<input type="button" value="글쓰기" onclick="javacript:location.href='notice_write.do'" /></td>
	</div>
	</c:if>
		<table align="center">
			<thead>
				<tr class="title">
					<th class="no">NO</th>
					<th class="subject">제목</th>
					<th class="regdate">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty n_list }">
					<tr>
						<td colspan="4"> 공지사항이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${!empty n_list }">
					<c:forEach items="${n_list }" var="k">
						<tr>
							<td>${k.question_idx }</td>
							<td><a href="notice_view.do?question_idx=${k.question_idx}">${k.subject}</a></td>
							<td>${k.regdate }</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>