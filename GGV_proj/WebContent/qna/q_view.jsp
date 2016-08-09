<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
	<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<div id="tb">
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
				<td colspan="3"></td>
			</tr>
			<tr><td colspan="4" align="left"><input type="button" value="목록으로"/></td></tr>
		</table>
	</div>
</body>
</html>