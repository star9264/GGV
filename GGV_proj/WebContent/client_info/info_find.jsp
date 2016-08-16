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
		z-index: 1;
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
function id_find_ok(f) {
	if(f.name.value.length==0){
		alert("이름을 입력하세요.");
	}else if(f.birthday.value.length==0 || f.birthday2.value.length==0 || f.birthday3.value.length==0){
		alert("생년월일을 입력하세요.");
	}else if(f.birthday.value.length !=4 || f.birthday2.value.length !=2 || f.birthday3.value.length !=2 || f.birthday2.value>12 || f.birthday3.value>31){
		alert("생년월일을 올바르게 입력해주세요.");
	}else if(f.phone.value.length ==0 || f.phone2.value.length ==0 || f.phone3.value.length ==0){
		alert("전화번호를 입력하세요.");
	}else if(f.phone.value.length !=3 || f.phone2.value.length !=4 || f.phone3.value.length !=4){
		alert("전화번호를 올바르게 입력해주세요.");
	}else{
		f.action="id_find.do";
		f.submit();
	}
}

function pwd_find_ok(f) {
	if(f.id.value.length==0){
		alert("아이디를 입력하세요.");
	}else if(f.name2.value.length==0){
		alert("이름을 입력하세요.");
	}else if(f.phone4.value.length ==0 || f.phone5.value.length ==0 || f.phone6.value.length ==0){
		alert("전화번호를 입력하세요.");
	}else if(f.phone4.value.length !=3 || f.phone5.value.length !=4 || f.phone6.value.length !=4){
		alert("전화번호를 올바르게 입력해주세요.");
	}else{
		f.action="pwd_find.do";
		f.submit();
	}
}
if("${res}"==3){
	alert("입력하신 정보를 찾을수 없습니다.");
}
if("${res}"==4){
	alert("비밀번호 : "+"${member_VO.pwd}");
	history.go(-1);
}

</script>
</head>
<body>
	<div id="menu">
    	<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<form method="post">
		<span id="top_span" style="color: #9068be; font-weight: bolder;">/</span>
		<span id="top_span" style="font-size: large; font-weight: bolder;">아이디 / 비밀번호 찾기</span>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<span id="top_span" style="color: #9068be; font-weight: bolder;">아이디 찾기</span>
		<span id="top_span">
		<hr style="background-color:#9068be; width: 25%; height: 3px; border-style: none;" align="left"/>
		<table align="" width="25%" style="border-collapse: collapse; margin-top: -8px;">
			<tbody>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">이름</td>
					<td><input type="text" name="name" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">생년월일</td>
					<td style="font-size: 12px">
					<input type="text" style="height: 18px;" size="2" name="birthday"/>&nbsp;년
					<input type="text" style="height: 18px;" size="1" name="birthday2"/>&nbsp;월&nbsp;
					<input type="text" style="height: 18px;" size="1" name="birthday3"/>&nbsp;일</td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">전화번호</td>
					<td style="font-size: 12px">
					<input type="text" style="height: 18px;" size="1" name="phone"/>&nbsp;-
					<input type="text" style="height: 18px;" size="2" name="phone2"/>&nbsp;-&nbsp;
					<input type="text" style="height: 18px;" size="2" name="phone3"/>&nbsp;</td>
				</tr>
			</tbody>	
		</table>
		</span>
		<div id="top_span" align="" style="margin-top: 20px;">
			<input onclick="id_find_ok(this.form)" type="button" value="확인" style="margin-left:340px; height: 30px; width: 56px; color: white; background-color: #9068be; border: none; cursor: pointer; font-weight: bolder;"/>	
		</div>
		
		<div style="margin-top: -220px; margin-left: 515px; ">
		<span id="top_span" style="color: #9068be; font-weight: bolder;">비밀번호 찾기</span>
		<span id="top_span">
		<hr style="background-color:#9068be; width: 37%; height: 3px; border-style: none;" align="left"/>
		<table align="" width="37%" style="border-collapse: collapse; margin-top: -8px;">
			<tbody>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">아이디</td>
					<td><input type="text" name="id" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">이름</td>
					<td><input type="text" name="name2" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">전화번호</td>
					<td style="font-size: 12px">
					<input type="text" style="height: 18px;" size="1" name="phone4"/>&nbsp;-
					<input type="text" style="height: 18px;" size="2" name="phone5"/>&nbsp;-&nbsp;
					<input type="text" style="height: 18px;" size="2" name="phone6"/>&nbsp;</td>
				</tr>
			</tbody>		
		</table>
		</span>
		<div id="top_span" align="" style="margin-top: 20px;">
			<input onclick="pwd_find_ok(this.form)" type="button" value="확인" style="margin-left:340px; height: 30px; width: 56px; color: white; background-color: #9068be; border: none; cursor: pointer; font-weight: bolder;"/>	
		</div>
		</div>
		<br/>
		<c:if test="${res eq 0}" >
			<div align="center"><h2>아이디 찾기 결과</h2></div>
			<div align="center"><h3>입력하신 정보를 찾을수 없습니다.</h3></div>
		</c:if>
		<c:if test="${res eq 1}" >
			<div align="center"><h2>아이디 찾기 결과</h2></div>
			<c:forEach var="k" items="${list}">
				<div align="center">
					<h3>${k.member_id}</h3>
				</div>
			</c:forEach>
		</c:if>
		<br/>
		<span id="top_span" style="color: #9068be; font-weight: bolder;">/</span>
		<span id="top_span" style="font-size: large; font-weight: bolder;">휴면계정 복구안내</span>
		<div style="font-size: 12px; width: 58%; margin-left: 300px;">
		<hr/>
		<br/>
			2015년 8월 18일 부로 정보통신망법 제16조 1항에 따라 GGV 온라인서비스를 1년이상 이용하지 않을 경우 가입하신 정보는 안전하게 분리보관되며 서비스 재이용을 원하실 경우 「휴먼계정 복구신청」후 이용하실 수 있습니다.
		<br/>
		<br/>
		<hr/>
		</div>
	</form>
</body>
</html>

























