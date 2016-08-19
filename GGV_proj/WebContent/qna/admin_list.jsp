<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	.no{width: 10%}
	.subject{width: 50%}
	.state{width: 20%}
	.regdate{width: 20%}
	.title{
		background-color: #c9c9c9;
		color: #9068be;
	}
</style>
</head>
<body>
	<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<div id="tb">
		<table align="center">
			<thead>
				<tr class="title">
					<th class="no">NO</th>
					<th class="subject">제목</th>
					<th class="state">답변상태</th>
					<th class="regdate">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty admin_list }">
					<tr>
						<td colspan="4"> 문의하신 내역이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${!empty admin_list }">
					<c:forEach items="${admin_list }" var="k" varStatus="s">
						<tr>
							<td>${admin_list.size()-s.count +1 }</td>
							<td><a href="q_view.do?question_idx=${k.question_idx}">${k.subject}</a></td>
							<td>${k.state }</td>
							<td>${k.regdate.substring(0,10) }</td>
						</tr>
					</c:forEach>
				</c:if>		
			</tbody>
		</table>
	</div>
	
</body>
</html>