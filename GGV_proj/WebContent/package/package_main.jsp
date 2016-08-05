<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>패키지 상품</title>
 
<style type="text/css">

.package_type{
border-style: groove;


}

h6{
	color: gray;
}

#menu{
		padding-bottom: 100px;
		padding-left: 100px;
	}

</style>

</head>
<body>

<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>
	<table align="center" id="packcage_info">
	
	<tbody>
	
	<tr height="100px" >
		<td >
			<h2 id="package_subject" >GGV 패키지</h2>
		</td>
	</tr>

	
	<tr>
		<td class="package_type">
		<a onClick="javascript:window.open('package_1.jsp','싱글 패키지','scrollbars=no, resizable=no, width=1180,height=700')"><img class="package_img" alt="싱글패키지" src="http://image2.megabox.co.kr/mop/store/2016/F9/D92F1E-CC77-450A-AA85-D65249A4DBED.large.jpg" width="250" height="280" bo></a><br/>
		<h6 align="center">관람권 1매, 팝콘(R), 탄산음료(R)</h6>
		<h4 align="center">싱글 패키지</h4>
		
		</td>
		
		<td class="package_type">
		<a onClick="javascript:window.open('package_2.jsp','러브콤보 패키지','scrollbars=yes, resizable=no, width1180,height=700')"><img class="package_img" alt="러브패키지" src="http://image2.megabox.co.kr/mop/store/2016/3A/1E814A-1495-4B80-97FF-858C19A3E737.large.jpg" width="250" height="280"></a><br/>
		<h6 align="center">관람권 2매 + 러브콤보 (팝콘L 1 + 탄산음료R 2)</h6>
		<h4 align="center">러브콤보 패키지</h4>
		</td>
		
		<td class="package_type">
		<a onClick="javascript:window.open('package_3.jsp','패밀리 패키지','scrollbars=yes, resizable=no, width=1180,height=700')"><img class="package_img" alt="패밀리패키지" src="http://image2.megabox.co.kr/mop/store/2016/15/8D541D-B1AE-4EFF-9C8B-BAC90A1C9EF7.large.jpg" width="250" height="280"></a><br/>
		<h6 align="center">관람권 3매, 팝콘(R)2, 탄산음료(R)2</h6>
		<h4 align="center">패밀리 패키지</h4>
		</td>
		
		<td class="package_type">
		<a onClick="javascript:window.open('package_4.jsp','슈퍼패밀리 패키지','scrollbars=yes, resizable=no, width=1180,height=700')"><img class="package_img"alt="슈퍼패밀리패키지" src="http://image2.megabox.co.kr/mop/store/2016/ED/6A77CD-64C3-4A3C-9A4B-34416A8EE9AF.large.jpg" width="250" height="280"></a><br/>
		<h6 align="center">관람권 4매, 팝콘(R)2, 음료(R)2, 나쵸1, 팩오징어 1</h6>
		<h4 align="center">슈퍼패밀리 패키지</h4>
		</td>
		
	</tr>
	</tbody>
	
	<tfoot>
	</tfoot>
	
	</table>
	
	
</body>
</html>