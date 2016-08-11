<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#top_btn {
	width: 25%;
	background-color: white;
	border-style: solid;
	border-color: #f7f7f7;
	cursor: pointer;
	font-size: 15px;
	font-weight: bold;
	color: gray;
}
  
#top_btn:HOVER {
	color: skyblue;
}
a{
  text-decoration: none;
}
.star_rating {font-size:0; letter-spacing:-4px;}
.star_rating a {
    font-size:22px;
    letter-spacing:0;
    display:inline-block;
    margin-left:5px;
    color:#ccc;
    text-decoration:none;
}
.star_rating a:first-child {margin-left:0;}
#btn2{
    width: 100px;
    height: 50px;
	background-color: #e9ece5;
	border-style: solid;
	border-color: #f7f7f7;
	cursor: pointer;
	font-size: 15px;
	font-weight: bold;
	color: gray;
}

#btn2:HOVER {
	color: #6ed3cf;
	background-color: white;
	border-color: #6ed3cf;
}

</style>
</head>
<body>
<div id="menu">
			<jsp:include page="../home/menu_bar.jsp"/>
	</div>	
<form method="post">
<br>
<br>
<br>
<br>
<br>
		<div align="center">
			<span><input type="button" value="박스오피스" id="top_btn"
				style="position: relative; left: 6px;"></span> 
				<span><input type="button" value="최신개봉작" id="top_btn"></span> 
				<span><input type="button" value="상영예정작" id="top_btn"
				style="position: relative; right: 6px;"></span>
		</div>
		<table align="center" style="margin-top: 50px;">
		  <body>
			<tr>
								<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/3C/8154AD-840A-40FF-859F-18683DA4BEF9.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>평점</td> 
                         <td><p class="star_rating">
						<a href="#" class="on" id="a">★</a> <a href="#" class="on" id="b">★</a> <a
							href="#" class="on" id="c">★</a> <a href="#" id="d">★</a> <a href="#" id="e">★</a>
					     </p></td>
                       </tr>
                       <tr>
                        <td align="center"><img alt="12" src="../img/12.png"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >국가대표2</a></td>
                       </tr>
                       <tr>
                        <td colspan="2" align="center"><input type="button" value="상세정보" id="btn2">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
								<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/DD/E965A7-BBDF-4BAE-90AB-6FE1DA2CE7A4.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>평점</td> 
                         <td><p class="star_rating">
						<a href="#" class="on" id="a">★</a> <a href="#" class="on" id="b">★</a> <a
							href="#" class="on" id="c">★</a> <a href="#" id="d">★</a> <a href="#" id="e">★</a>
					     </p></td>
                       </tr>
                       <tr>
                         <td align="center"><img alt="12" src="../img/12.png"> </td>
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >킹 오브 프리즘</a></td>
                       </tr>
                       <tr>
                       <td colspan="2" align="center"><input type="button" value="상세정보" id="btn2">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
				<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/19/7C26D0-D672-4A6B-AC5F-E8BD7C7AE343.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>평점</td> 
                         <td><p class="star_rating">
						<a href="#" class="on" id="a">★</a> <a href="#" class="on" id="b">★</a> <a
							href="#" class="on" id="c">★</a> <a href="#" id="d">★</a> <a href="#" id="e">★</a>
					     </p></td>
                       </tr>
                       <tr>
                         <td align="center"><img alt="15" src="../img/15.png"> </td>
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >노조키메</a></td>
                       </tr>
                       <tr>
                       <td colspan="2" align="center"><input type="button" value="상세정보" id="btn2">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
				<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/8E/FD1ED5-B563-48B5-BD69-BA1C3489DA51.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>평점</td> 
                         <td><p class="star_rating">
						<a href="#" class="on" id="a">★</a> <a href="#" class="on" id="b">★</a> <a
							href="#" class="on" id="c">★</a> <a href="#" id="d">★</a> <a href="#" id="e">★</a>
					     </p></td>
                       </tr>
                       <tr>
                         <td align="center"><img alt="12" src="../img/12.png"> </td>
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >터널</a></td>
                       </tr>
                       <tr>
                       <td colspan="2" align="center"><input type="button" value="상세정보" id="btn2">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
							<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/13/ECBB59-9995-459D-AC21-868E4B58FBCB.medium.jpg"> </td>
                       </tr>
                       <tr>
                         <td>평점</td> 
                         <td><p class="star_rating">
						     <a href="#" class="on" id="a">★</a> <a href="#" class="on" id="b">★</a> <a
							    href="#" class="on" id="c">★</a> <a href="#" id="d">★</a> <a href="#" id="e">★</a>
					     </p></td>
                       </tr>
                       <tr>
                         <td align="center"><img alt="all" src="../img/all.png"> </td>
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >슈퍼프렌즈</a></td>
                       </tr>
                       <tr>
                         <td colspan="2" align="center"><input type="button" value="상세정보" id="btn2">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
</form>
</body>
</html>