<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>��Ű�� ��ǰ</title>
 
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
			<h2 id="package_subject" >GGV ��Ű��</h2>
		</td>
	</tr>

	
	<tr>
		<td class="package_type">
		<a onClick="javascript:window.open('package_info.do?type=package_1','�̱� ��Ű��','scrollbars=no, resizable=no, width=1180,height=700')"><img class="package_img" alt="�̱���Ű��" src="http://image2.megabox.co.kr/mop/store/2016/F9/D92F1E-CC77-450A-AA85-D65249A4DBED.large.jpg" width="250" height="280" bo></a><br/>
		<h6 align="center">������ 1��, ����(R), ź������(R)</h6>
		<h4 align="center">�̱� ��Ű��</h4>
		
		</td>
		
		<td class="package_type">
		<a onClick="javascript:window.open('package_info.do?type=package_2','�����޺� ��Ű��','scrollbars=yes, resizable=no, width1180,height=700')"><img class="package_img" alt="������Ű��" src="http://image2.megabox.co.kr/mop/store/2016/3A/1E814A-1495-4B80-97FF-858C19A3E737.large.jpg" width="250" height="280"></a><br/>
		<h6 align="center">������ 2�� + �����޺� (����L 1 + ź������R 2)</h6>
		<h4 align="center">�����޺� ��Ű��</h4>
		</td>
		
		<td class="package_type">
		<a onClick="javascript:window.open('package_info.do?type=package_3','�йи� ��Ű��','scrollbars=yes, resizable=no, width=1180,height=700')"><img class="package_img" alt="�йи���Ű��" src="http://image2.megabox.co.kr/mop/store/2016/15/8D541D-B1AE-4EFF-9C8B-BAC90A1C9EF7.large.jpg" width="250" height="280"></a><br/>
		<h6 align="center">������ 3��, ����(R)2, ź������(R)2</h6>
		<h4 align="center">�йи� ��Ű��</h4>
		</td>
		
		<td class="package_type">
		<a onClick="javascript:window.open('package_info.do?type=package_4','�����йи� ��Ű��','scrollbars=yes, resizable=no, width=1180,height=700')"><img class="package_img"alt="�����йи���Ű��" src="http://image2.megabox.co.kr/mop/store/2016/ED/6A77CD-64C3-4A3C-9A4B-34416A8EE9AF.large.jpg" width="250" height="280"></a><br/>
		<h6 align="center">������ 4��, ����(R)2, ����(R)2, ����1, �ѿ�¡�� 1</h6>
		<h4 align="center">�����йи� ��Ű��</h4>
		</td>
		
	</tr>
	</tbody>
	
	<tfoot>
	</tfoot>
	
	</table>
	
	
</body>
</html>