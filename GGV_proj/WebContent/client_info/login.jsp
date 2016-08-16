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
#menu{
   		padding-bottom: 150px;
    	padding-left: 100px;
   	}

</style>
<script type="text/javascript">
	function join_go(f) {
		f.action="join.do";
		f.submit();
	}
	function find_go(f) {
		f.action="info_find.do";
		f.submit();
	}
	function login_ok(f) {
		if(f.member_id.value.length==0){
			alert("아이디를 입력해주세요.");
		}else if(f.pwd.value.length==0){
			alert("비밀번호를 입력해주세요");
		}else{
			f.action="login_ok.do";
			f.submit();
		}
	}
	if("${res}"==1){
		alert("비밀번호가 변경되었습니다.\n다시 로그인 해주세요.");
		<%session.removeAttribute("info");%>
	}else if("${res}"==2){
		alert("탈퇴 되었습니다.");
	}else if("${res2}"==1){
		alert("회원가입이 완료되었습니다.");
	}
</script>
</head>
<body>
	<div id="menu">
    	<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<form method="post">
	<table align="center">
		<thead>
			<p align="center" style="color: #9068be; font-size: 30px; font-weight: bolder;">G G V</p>
		</thead>
		<tbody>
			<h3 align="center">로그인</h3>
			<tr>
				<td>
					<div align="center"><input id="text" type="text" name="member_id" placeholder="아이디" size="30" style="height: 20px"/></div>
				</td>
				<td rowspan="2">
					<input onclick="login_ok(this.form)" type="button" value="로그인" style="height: 56px; width: 56px; color: white; background-color: #9068be; border: none; cursor: pointer; font-weight: bolder;"/>
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
		<input onclick="join_go(this.form)" id="bot" type="button" value="회원가입" style="height: 90px; width: 90px; border:none; border-radius:50%; cursor: pointer; color: gray;">
		<input onclick="find_go(this.form)" id="bot" type="button" value="ID/PW 찾기" style="height: 90px; width: 90px; border:none; border-radius:50%; cursor: pointer; color: gray;">
	</div>
	</form>
</body>
</html>