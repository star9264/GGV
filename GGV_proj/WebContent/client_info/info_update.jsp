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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function cancel() {
		history.go(-1);
	}
	
	function info_update_ok(f) {
		
		if(f.pwd.value.length==0){
			alert("비밀번호를 입력하세요.");
		}else{
			var chk = confirm("정말 수정하시겠습니까?");
			if(chk==true){
				$("#id").attr('disabled', false);
				f.action="info_update.do";
				f.submit();
			}else{
				return;
			}
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
		<span id="top_span" style="font-size: large; font-weight: bolder;">개인정보 수정</span>
		<span id="top_span" style="font-size: small;">회원님의 정보를 정확히 입력해주세요.</span>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<span id="top_span" style="color: #9068be; font-weight: bolder;">개인정보</span>
		<span style="font-size: 12px; position: relative; right: -230px; bottom: -13px;">*표시 항목은 필수입력 항목입니다.</span>
		<span><input type="button" value="비밀번호 변경" style="color: #f0eceb; position: relative; right: -844px; width: 100px; height: 30px; background-color: #9068be; border-style: none; cursor: pointer;"/>
		<input type="button" value="회원탈퇴" style="color: #f0eceb; position: relative; right: -844px; width: 70px; height: 30px; background-color: #9068be; border-style: none; cursor: pointer;"/>
		</span>
		<hr style="background-color:#9068be; width: 62%; height: 3px; border-style: none;"/>
		<table align="center" width="62%" style="border-collapse: collapse; margin-top: -8px;">
			<tbody>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*아이디</td>
					<td><input id="id" type="text" name="member_id" style="height: 18px;" value="${member_VO.member_id}" disabled="disabled"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*비밀번호</td>
					<td><input type="password" style="height: 18px;" name="pwd"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*이름</td>
					<td><input type="text" style="height: 18px;" value="${member_VO.name}" disabled="disabled"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*생년월일</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="2" value="${member_VO.birthday.substring(0,4)}" disabled="disabled"/>&nbsp;년
					<input type="text" style="height: 18px;" size="1"  value="${member_VO.birthday.substring(4,6)}" disabled="disabled"/>&nbsp;월&nbsp;
					<input type="text" style="height: 18px;" size="1"  value="${member_VO.birthday.substring(6,8)}" disabled="disabled"/>&nbsp;일</td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*전화번호</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="1" value="${member_VO.phone.substring(0,3)}" name="phone"/>&nbsp;-
					<input type="text" style="height: 18px;" size="2"  value="${member_VO.phone.substring(3,7)}" name="phone2"/>&nbsp;-&nbsp;
					<input type="text" style="height: 18px;" size="2" value="${member_VO.phone.substring(7,11)}" name="phone3"/>&nbsp;</td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*주소</td>
					<td><input type="text" style="height: 18px;" size="40" value="${member_VO.addr}" name="addr"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">*이메일</td>
					<td><input type="text" style="height: 18px;" value="${member_VO.email_addr}" name="email_addr"/></td>
				</tr>
			</tbody>		
		</table>
		<div align="center" style="margin-top: 50px;">
			<input type="button" onclick="info_update_ok(this.form)" value="수정" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>
			<input type="button" onclick="cancel()" value="취소" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>	
		</div>
	</form>
</body>
</html>

























