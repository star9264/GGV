<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>패키지 information</title>
<style type="text/css"> 
ul {
	list-style-image: url('img/check_sign.png');
} 

#product_info {
	border-style: groove;
	border-color: BBBBBB;
	border-width: 10px;
}

h2 {
	color: gray;
}

#purchase {
	background-color: #9068be;
	color: white;
	height: 50px;
	width: 150px;
	border: none;
	border-radius: 8px;
}
</style>


<script type="text/javascript">
	function bt_up() {
		var max = document.getElementById("maxsu").value;
		var r_max = parseInt(max);
		var number = parseInt(document.getElementById("su").value);
		if (number >= max) {
			up_number = number;
			alert("최대 수량은 " + r_max + "개 입니다.")
		} else {
			var up_number = number + 1;

		}
		document.getElementById("su").value = up_number;
		var p_price = document.getElementById("p_price").value;
		var total_p = up_number * parseInt(p_price);
		document.getElementById("total_price").value = total_p;

	}

	function bt_down() {
		var number = parseInt(document.getElementById("su").value);
		if (number == 1) {
			down_number = number;
		} else {
			var down_number = --number;
		}

		document.getElementById("su").value = down_number;
		var r_number = parseInt(document.getElementById("su").value);
		var p_price = document.getElementById("p_price").value;
		var total_p = r_number * parseInt(p_price);
		document.getElementById("total_price").value = total_p;
	}

	function info_submit() {
		var total_price = document.getElementById("total_price").value;
		var su = document.getElementById("su").value;
		var total_price = document.getElementById("total_price").value;
		document.getElementById("total_price").value = total_price;
		document.getElementById("su").value = su;
		document.getElementById("total_price").value = total_price;
	}
	function p_purchase() {

		/* window.open('purchase.do','패키지 구매','scrollbars=no, resizable=no, width=680,height=420')  */
		var open = window.open("", "패키지 구매",
				"scrollbars=1, menubar=1,resizable=1");
		var openform = document.package_information;
		openform.action = "purchase.do";
		openform.target = "패키지 구매";
		openform.submit();
	}
</script>
</head>
<body>

	<table>
		<tbody>
			<form name="package_information" method="post">
				<c:if test="${!empty p_vo}">
					<c:forEach items="${p_vo}" var="k">
						<tr>
							<th colspan="2"><h2 align="left" style="color: purple;">메가티켓</h2>
								<hr style="border: solid 2px purple;" /></th>
						</tr>

						<tr>

							<td rowspan="6"><img alt="" src="${k.package_img }"
								height="300px" width="350px" align="top"></td>

							<td>

								<table id="package_info">

									<tr>
										<td><h3>${k.package_name}</h3> <input type="hidden"
											name="package_name" value="${k.package_name}"></td>
									</tr>
									<tr height="30px">
										<td>${k.package_item}</td>
									</tr>
									<tr height="150px">
										<td><strong>·유효기간</strong>:예매가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은
											관람권사용 당일에만 교환 가능합니다. <br /> <strong>·판매수량</strong>:1회
											${k.package_maxsu }개 구매가능<br /> <input type="hidden"
											name="maxsu" value="${k.package_maxsu}" id="maxsu"> <strong>·구매
												후 취소</strong>:구매일로부터 7일까지 취소 가능하며, 부분취소는 불가능 합니다. (패키지품목 개별취소 불가)<br /></td>
									</tr>
									<tr>
										<td><strong>스토어 판매가 : ${k.package_price}원 </strong> <input
											type="hidden" value="${k.package_price }" id="p_price"><br />
											<br /> <strong>수량</strong> &nbsp;&nbsp;&nbsp;&nbsp; <input
											type="button" value="-" width="15px" height="15px"
											onclick="bt_down()" /> <input type="text" value="1" id="su"
											size="1" name="package_su" /> <input
											type="button" value="+" width="15px" height="15px"
											onclick="bt_up()" /><br /> <br /></td>
									</tr>
									<tr height="10px">
										<td><strong>총 상품 금액</strong> &nbsp;&nbsp;&nbsp;&nbsp; <input
											type="text" value="${k.package_price}"
											size="3" id="total_price" name="total_price" /> &nbsp;원</td>
									</tr>
									<tr height="100px">
										<td><input id="purchase" type="button" value="구매하기"
											align="right" onclick="info_submit();p_purchase()" /></td>
									</tr>

								</table>

							</td>
						</tr>
					</c:forEach>
				</c:if>
			</form>
		</tbody>

		<tfoot>
			<tr>
				<td colspan="2">
					<div id="product_info">
						<h2>&nbsp;&nbsp;상품이용안내</h2>
						<ul>
							<li>구매 전 유의 사항! 하단의 사용불가지점을 확인하신 후 구매결정 하시기 바랍니다. 본 상품은 일부
								지점에서 사용이 불가합니다.</li>
							<li>본 상품은 GGV 홈페이지에서만 예매 가능합니다.</li>
							<li>홈페이지 예매방법 : 지점 - 영화명 - 시간 - 인원 - 결제수단 - 관람권 - 스토어관람권 -
								PIN번호입력 - 결제</li>
							<li>본 권은 2D 일반관 전용 패키지 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람
								시 차액환급 불가)</li>
							<li>매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다.</li>
							<li>구매내역은 GGV홈페이지에서 확인이 가능하며 재전송은 본 권 구매 시 등록한 번호로만 재전송이
								가능합니다.</li>
							<li>매점쿠폰은 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.</li>
							<li>본 관람권으로 관람 시 1매 당 900점의 GGV 멤버십 포인트가 적립됩니다.</li>
							<li>본 상품은 일부 지점에서 사용하실 수 없습니다.</li>

						</ul>

					</div>

				</td>
			</tr>
		</tfoot>
	</table>

</body>
</html>