<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<td><input type="password" name="id" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">생년월일</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="2"/>&nbsp;년
					<input type="text" style="height: 18px;" size="1"/>&nbsp;월&nbsp;<input type="text" style="height: 18px;" size="1"/>&nbsp;일</td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">전화번호</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="1"/>&nbsp;-
					<input type="text" style="height: 18px;" size="2"/>&nbsp;-&nbsp;<input type="text" style="height: 18px;" size="2"/>&nbsp;</td>
				</tr>
			</tbody>		
		</table>
		</span>
		<div id="top_span" align="" style="margin-top: 20px;">
			<input type="button" value="확인" style="margin-left:340px; height: 30px; width: 56px; color: white; background-color: #9068be; border: none; cursor: pointer; font-weight: bolder;"/>	
		</div>
		
		<div style="margin-top: -220px; margin-left: 515px; ">
		<span id="top_span" style="color: #9068be; font-weight: bolder;">비밀번호 찾기</span>
		<span id="top_span">
		<hr style="background-color:#9068be; width: 37%; height: 3px; border-style: none;" align="left"/>
		<table align="" width="37%" style="border-collapse: collapse; margin-top: -8px;">
			<tbody>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">아이디</td>
					<td><input type="password" name="id" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">이름</td>
					<td><input type="password" name="id" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">전화번호</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="1"/>&nbsp;-
					<input type="text" style="height: 18px;" size="2"/>&nbsp;-&nbsp;<input type="text" style="height: 18px;" size="2"/>&nbsp;</td>
				</tr>
			</tbody>		
		</table>
		</span>
		<div id="top_span" align="" style="margin-top: 20px;">
			<input type="button" value="확인" style="margin-left:340px; height: 30px; width: 56px; color: white; background-color: #9068be; border: none; cursor: pointer; font-weight: bolder;"/>	
		</div>
		</div>
		<br/>
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

























