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
	#cap{
		padding-left: 200px;
	}
	#write{
		padding-left: 200px;
		padding-top: 50px;
		font-size: 15px;
		
	}
	#write table{
		width: 800px;
		border-spacing: 0px;
		border-top: 2px solid purple;
		
	}
	
	#write table th{
		width: 100px;
		border: 1px solid #dddddd;
		background-color: #eeeeee;
		padding: 15px 20px;
		color: #9068be;
		text-align: left;
		
	}
	
	#write table tbody td{
		
		border: 1px solid #dddddd;
		padding: 15px 20px;
	}
	#write table tfoot tr{
		height: 100px;
	}
	
	#write input[type="text"]{
		width: 300px;
	}
	#btn{
		width: 100px; 
		height: 50px; 
		font-size: 20px;
		border: none;
		color: white;
		background-color: #9068be;
		border-radius: 8px;
	}
</style>
</head>
<body>
	<div id="menu">
			<jsp:include page="menu_bar.jsp"/>
	</div>
	<div id="cap">
		<h2 style="color: #9068be;"> 문의 사항</h2>
		> 문의글 답변 운영시간 11:00 ~ 13:00
	</div>
	<div id="write">
		<table>
			<tbody>
				<tr>
					<th>이름</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" style="height: 200px; width: 500px"></textarea></td>
				</tr>
			</tbody>
			<tfoot>
				<tr bordercolor="white;" align="center">
					<td colspan="2" bordercolor="white">
						<button id="btn">등록</button>
						
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	
</body>
</html>