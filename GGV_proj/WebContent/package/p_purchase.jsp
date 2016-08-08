<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>패키지 구매 결재</title>
<script type="text/javascript">
	
	function cancel(){
		window.close();
	}
	
	function purchase_ok(){
		alert("구매하시겠습니까?")
		
		
	}
	
</script>

<style type="text/css">
#charge_info{
	border-style: inset;
	border-color: gray;
	border-width: 5px;
	width: 650px;
	height: 130px;

}

h5{
color: gray;

}

#title{
	color: purple;
}

#purchase_cancel,#purchase_ok {
	width:100px;
	height:60px;
	background-color: #9068be;
	color: white; 
	border-radius: 8px;
	border: none;
}

.su_price{
height: 50px;
font-size: large;
font-weight: bold;
}
</style>
</head>
<body>

	<table id="package_charge">

		<thead>
			<tr>
				<td><h2 id="title">패키지상품 결제하기</h2></td>
			</tr>

		</thead>
		<tbody>
			<tr>
				<td>
					<div id="charge_info">
						<h3 style=" font-size: large;">싱글 패키지</h3>
						<h5>유효기간 :예매가능 유효기간은 구매일로부터 1개월이며, 매점쿠폰은 관람권사용 당일에만 교환 가능합니다.</h5>
					</div>
					
				</td>
			</tr>
			<tr>
			<td class="su_price"><strong>수량</strong></td>
			</tr>
			<tr>
			

			<td class="su_price"> 
			<strong>총 결제 금액</strong>			
			</td>
			
			</tr>
			<tr>
			<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="취소" id="purchase_cancel" onclick="cancel()">
			<input type="button" value="결제" onclick="purchase_ok()" id="purchase_ok"> 
			
			</td>
			
			</tr>


		</tbody>
	</table>

	<h2></h2>

</body>
</html>