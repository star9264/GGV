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
</style>
</head>
<body>
	<form method="post">
		<span id="top_span" style="color: #9068be; font-weight: bolder;">/</span>
		<span id="top_span" style="font-size: large; font-weight: bolder;">비밀번호 변경</span>
		<span id="top_span" style="font-size: small;">현재 비밀번호를 입력한 후 새로 사용할 비밀번호를 입력하세요.</span>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<span id="top_span" style="color: #9068be; font-weight: bolder;">비밀번호 변경</span>
		<hr style="background-color:#9068be; width: 62%; height: 3px; border-style: none;"/>
		<table align="center" width="62%" style="border-collapse: collapse; margin-top: -8px;">
			<tbody>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">현재 비밀번호</td>
					<td><input type="password" name="id" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">새 비밀번호</td>
					<td><input type="password" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td style="font-weight: bolder; background-color: #f5f5f5; font-size: 14px;">새 비밀번호 확인</td>
					<td><input type="password" style="height: 18px;"/></td>
				</tr>
				<tr>
					<td colspan="2" style="font-size: 12px;">
						> 생년월일, 전화번호 등 개인 정보와 관련된 숫자, 연속된 숫자와 같이 쉬운 비밀번호는 다른 사람이 쉽게 알아낼 수 있으니 사용을 자제해 주세요.
						<br/>
						> 비밀번호는 3-6개월마다 꼭 바꿔 주세요.
						<br/>
						> 비밀번호 변경시 모바일 기기와 홈페이지에서 모두 로그아웃됩니다. 변경한 비밀번호로 다시 로그인해주세요.
					</td>
				</tr>
			</tbody>		
		</table>
		<div align="center" style="margin-top: 50px;">
			<input type="button" value="수정" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>
			<input type="button" value="취소" style="width: 110px; height: 75px; background-color: white; cursor: pointer; border-style: solid; color: gray;"/>	
		</div>
	</form>
</body>
</html>

























