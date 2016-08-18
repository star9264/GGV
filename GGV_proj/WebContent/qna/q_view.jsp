<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">
	#menu{
		padding-bottom: 100px;
		padding-left: 100px;
	}
	#tb {
		padding-top: 100px;
		padding-left: 200px;
		font-size: 15px;
	}
	
	#tb table{
		width : 1000px;
		border-spacing : 0px;
		font-size: 15px;
		margin: 0px;
		border: 1px solid #dddd;
		border-top: 2px solid purple;
	}
	#tb table th{
		width: 200px;
		padding: 5px 10px;
		background-color: #eeeeee;
		color: #9068be;
	}
	#tb table td{
		width: 300px;
		text-align: center;
		border: 1px solid #dddddd;
		padding: 5px 10px;
	}
</style>
<script>
	function answer_go(f) {
		f.action = "q_answer_write.do?question_idx=${qvo.question_idx}"
		f.submit();
	}
</script>
</head>
<body>
	<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<div id="tb">
	<form method="post">
		<table>
			<tr>
				<th>제목</th>
				<td colspan="3">${qvo.subject }</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>${qvo.member_phone }</td>
				<th>이메일</th>
				<td>${qvo.member_email }</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${qvo.regdate }</td>
				<th>답변상태</th>
				<td>${qvo.state }</td>
			</tr>
			<tr>
				<th height="250px">내용</th>
				<td colspan="3">${qvo.content }</td>
			</tr>
			<tr>
				<th height="250px">[답변내용]</th>
				<td colspan="3"> ${avo.content} </td>
			</tr>
			<c:if test="${info.grade == '관리자' && empty avo}">
			
			<tr>
				<th>답변달기</th>
				<td colspan="2"><textarea name="content" rows="5"	 cols="80"></textarea> </td>
				<td><input type="button" value="답변등록" onclick="answer_go(this.form)"/></td>
			</tr>
			</c:if>
			<tr>
			<c:if test="${info.grade=='관리자' }">
			<td colspan="4" align="left"><input type="button" value="목록으로" onclick="javacript:location.href='admin_qlist.do?type=ask'"/></td>
			</c:if>
			<c:if test="${! (info.grade == '관리자') }">
			<td colspan="4" align="left"><input type="button" value="목록으로" onclick="javacript:location.href='q_list.do?type=ask&id=${info.member_id }'"/></td>
			</c:if>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>