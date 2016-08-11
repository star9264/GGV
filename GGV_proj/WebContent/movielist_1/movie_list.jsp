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
	<form method="post">
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
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px; ">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/38/16B949-B9C8-4466-B4D1-A620DD5A9988.medium.jpg"></td>
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
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >수어사이드 스쿼드</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/58/5D113B-865F-4EFE-9A05-BA75A91DABED.medium.jpg"> </td>
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
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >덕혜옹주</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/4B/2B326F-31C5-4882-A2C2-41BED7272C07.medium.jpg"></td>
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
                          <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >마이펫의 이중생활</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/D8/D9BFE5-01E1-4477-A688-9C69C27D99C6.medium.jpg"></td>
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
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >명탐정 코난:순흑..</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/93/B66B0E-C1CD-436B-B5C7-C17631A4D08C.medium.jpg"></td>
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
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >인천상륙작전</a></td>
                       </tr>
                       <tr>
                        <td colspan="2" align="center"><input type="button" value="상세정보" id="btn2">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
			</tr>
     </body>
</table>
<table align="center" style="margin-top: 50px;">
		<body>
			<tr>
				<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/3F/EDF304-75E3-4CDC-BB23-AC505E87F8FB.medium.jpg"></td>
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
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >제이슨 본</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/64/728162-7786-4E25-8B7E-CE8A678F4FCA.medium.jpg"></td>
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
                         <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >부산행</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/2C/9D0E86-D278-4D5D-BACB-4779228F151C.medium.jpg"></td>
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
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >서울행</a></td>
                       </tr>
                       <tr>
                        <td colspan="2" align="center"><input type="button" value="상세정보" id="btn2">
                         <input type="button" value="상세정보" id="btn2"></td>
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
			</tr>
     </body>
</table>
</form>
</body>
</html>