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
</style>
</head>
<body>
	<form method="post">
		<span id="top_span" style="color: #9068be; font-weight: bolder;">/</span>
		<span id="top_span" style="font-size: large; font-weight: bolder;">회원가입</span>
		<span id="top_span" style="font-size: small;">GGV에 오신것을 환영합니다.</span>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<div align="center" style="color: silver; font-size: xx-large; font-weight: bolder;">당신의 꿈을 개봉합니다.</div>
		<div align="center" style="color: #9068be; font-size: xx-large; font-weight: bolder;">GGV</div>
		<br/>
		<br/>
		<br/>
		<span id="top_span" style="color: #9068be; font-weight: bolder;">로그인정보</span>
		<span style="color: red; font-size: 12px; position: relative; right: -1032px">'*'항목은 필수입력 사항입니다.</span>
		<hr align="center" width="62%"/>
		<table align="center">
			<tbody>
				<tr>
					<td style="font-weight: bolder;">*아이디</td>
					<td><input type="text" name="id" style="height: 18px;"/>&nbsp;<input type="button" value="중복확인"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*비밀번호</td>
					<td><input type="password" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*비밀번호확인</td>
					<td><input type="password" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*이름</td>
					<td><input type="text" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*생년월일</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="2"/>&nbsp;년
					<input type="text" style="height: 18px;" size="1"/>&nbsp;월&nbsp;<input type="text" style="height: 18px;" size="1"/>&nbsp;일</td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*성별</td>
					<td style="font-size: 12px;"><input type="radio" name="gender"/>남자<input type="radio" name="gender"/>여자</td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*전화번호</td>
					<td style="font-size: 12px"><input type="text" style="height: 18px;" size="1"/>&nbsp;-
					<input type="text" style="height: 18px;" size="2"/>&nbsp;-&nbsp;<input type="text" style="height: 18px;" size="2"/>&nbsp;</td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*주소</td>
					<td><input type="text" style="height: 18px;" size="40"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder;">*이메일</td>
					<td><input type="text" style="height: 18px;"/></td>
				</tr>
			</tbody>
			<br/>
			<tfoot>
				<tr align="center"><td align="center" colspan="2">
				<br/>
				<br/>
				<input type="button" value="회원가입" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>
				<input type="button" value="취소" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>			
				</td></tr>
			</tfoot>
		</table>
	</form>
</body>
</html>

























