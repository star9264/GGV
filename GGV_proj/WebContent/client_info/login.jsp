<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
input{
	outline: none;
}
#text:ACTIVE {
	
}

</style>
</head>
<body>
	<form method="post">
	<table align="center">
		<thead>
			<p align="center" style="color: #9068be; font-size: 30px; font-weight: bolder;">M E G A B O X</p>
		</thead>
		<tbody>
			<h3 align="center">로그인</h3>
			<tr>
				<td>
					<div align="center"><input id="text" type="text" name="id" placeholder="아이디" size="30" style="height: 20px"/></div>
				</td>
				<td rowspan="2">
					<input type="button" value="로그인" style="height: 56px; width: 56px; color: white; background-color: #9068be; border: none; cursor: pointer; font-weight: bolder;"/>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center"><input id="text" type="password" name="pwd" size="30" style="height: 20px" placeholder="비밀번호"/></div>
				</td>
			</tr>
		</tbody>
	</table>
	<hr style="width: 25%; color: silver;" align="center"/>
	<div align="center">
		<input id="bot" type="button" value="회원가입" style="height: 90px; width: 90px; border:none; border-radius:50%; cursor: pointer; color: gray;">
		<input id="bot" type="button" value="ID/PW 찾기" style="height: 90px; width: 90px; border:none; border-radius:50%; cursor: pointer; color: gray;">
	</div>
	</form>
</body>
</html>