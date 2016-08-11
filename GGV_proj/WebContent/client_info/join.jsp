<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#top_span{
		position: relative;
		right: -300px;
	}
	input{
		outline: none;
	}
	th, td{
		border-bottom: 2px solid #ddd;
		padding: 10px;
	}
	#menu{
   		padding-bottom: 150px;
    	padding-left: 100px;
   	}
</style>
<script type="text/javascript">

function id_confirm(f) {
	f.action="id_confirm.do";
	f.submit();
}

	function join_ok(f){
		if("${res}"==1){
				if(f.member_id.value.length==0){
					alert("아이디를 입력해주세요.");
				}else if(f.pwd.value.length==0 || f.pwd2.value.length==0){
					alert("비밀번호를 입력해주세요.");
				}else if(f.pwd.value!=f.pwd2.value){
					alert("비밀번호가 서로 일치하지 않습니다.");
				}else if(f.name.value.length==0){
					alert("이름을 입력해주세요.");
				}else if(f.gender.value.length==0){
					alert("성별을 선택해주세요.");
				}else if(f.phone.value.length==0 || f.phone.value.length!=3){
					alert("전화번호를  올바르게 입력해주세요.");
				}else if(f.phone2.value.length==0 || f.phone2.value.length!=4){
					alert("전화번호를  올바르게 입력해주세요.");
				}else if(f.phone3.value.length==0 || f.phone3.value.length!=4){
					alert("전화번호를  올바르게 입력해주세요.");
				}else if(f.birthday.value.length==0 || f.birthday.value.length!=4){
					alert("생년월일을  올바르게 입력해주세요.");
				}else if(f.birthday2.value.length==0 || f.birthday2.value.length!=2){
					alert("생년월일을  올바르게 입력해주세요.");
				}else if(f.birthday3.value.length==0 || f.birthday3.value.length!=2){
					alert("생년월일을  올바르게 입력해주세요.");
				}else if(f.addr.value.length==0){
					alert("주소를 입력해주세요.");
				}else if(f.email_addr.value.length==0){
					alert("이메일을 입력해주세요.");
				}else{
					var chk = confirm("회원가입 하시겠습니까?");
					if(chk==true){
						f.action="join_ok.do";
						f.submit();
					}
				}
		}else{
			alert("아이디 중복확인을 해주세요.")
		}
		
	}
</script>
</head>
<body>
	<div id="menu">
    	<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<form method="post">
		<span id="top_span" style="color: #9068be; font-weight: bolder;">/</span>
		<span id="top_span" style="font-size: large; font-weight: bolder;">회원가입</span>
		<span id="top_span" style="font-size: small;">GGV에 오신것을 환영합니다.</span>
		<br/>
		<br/>
		<div align="center" style="color: silver; font-size: xx-large; font-weight: bolder;">당신의 꿈을 개봉합니다.</div>
		<div align="center" style="color: #9068be; font-size: xx-large; font-weight: bolder;">GGV</div>
		<span id="top_span" style="color: #9068be; font-weight: bolder;">로그인정보</span>
		<span style="color: red; font-size: 12px; position: relative; right: -1020px">'*'항목은 필수입력 사항입니다.</span>
		<hr align="center" width="62%" style="background-color: #9068be; height: 2px;"/>
		<table align="center" width="62%" style="border-collapse: collapse; margin-top: -8px;">
			<tbody>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*아이디</td>
					<td><input type="text" class="member_id" id=아이디 name="member_id" style="height: 18px;" value="${member_id}"/>&nbsp;
					<input onclick="id_confirm(this.form)" type="button" value="중복확인" style="color: #f0eceb; width: 70px; height: 30px; background-color: #9068be; border-style: none; cursor: pointer;"/>
					<c:if test="${!empty member_id}">
						<h5 style="color: #9068be">사용가능한 아이디입니다.<h5>
					</c:if>
					</td>
					
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*비밀번호</td>
					<td><input type="password" id="비밀번호" name="pwd" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*비밀번호확인</td>
					<td><input type="password" id="비밀번호확인" name="pwd2" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*이름</td>
					<td><input type="text" id="이름" name="name" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*생년월일</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="2" id="생년월일" name="birthday"/>&nbsp;년
					<input type="text" style="height: 18px;" size="1" id="생년월일" name="birthday2"/>&nbsp;월&nbsp;
					<input type="text" style="height: 18px;" size="1" id="생년월일" name="birthday3"/>&nbsp;일</td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*성별</td>
					<td style="font-size: 12px;"><input type="radio" name="gender" value="남자"/>남자<input type="radio" name="gender" value="여자"/>여자</td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*전화번호</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="1" id="전화번호" name="phone"/>&nbsp;-
					<input type="text" style="height: 18px;" size="2" id="전화번호" name="phone2"/>&nbsp;-&nbsp;
					<input type="text" style="height: 18px;" size="2" id="전화번호" name="phone3"/>&nbsp;</td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*주소</td>
					<td><input type="text" style="height: 18px;" size="40" id="주소" name="addr"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*이메일</td>
					<td><input type="text" style="height: 18px;" id="이메일" name="email_addr"/></td>
				</tr>
			</tbody>		
		</table>
		<div align="center" style="margin-top: 25px;">
			<input onclick="join_ok(this.form)" type="button" value="회원가입" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>
			<input type="button" value="취소" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>	
		</div>
	</form>
</body>
</html>

























