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
<script type="text/javascript">
     function list01(f) {
	f.action="movie_list01.do";
		f.submit();
	}
     function list02(f) {
		f.action="movie_list02.do";
		f.submit();
	}
    function list03(f) {
 		f.action="movie_list03.do";
 		f.submit();
 	}
</script>
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
				style="position: relative; left: 6px;" onclick="list01(this.form)" /></span> 
				<span><input type="button" value="최신개봉작" id="top_btn" onclick="list02(this.form)" /></span> 
				<span><input type="button" value="상영예정작" id="top_btn"
				style="position: relative; right: 6px;" onclick="list03(this.form)" /></span>
		</div>
		<table align="center" style="margin-top: 50px;">
		  <body>
			<tr>
		    	<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/2C/9D0E86-D278-4D5D-BACB-4779228F151C.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>날짜</td> 
                         <td><p class="d-day">
					</td>
                       </tr>
                       <tr>
                        <td align="center"><img alt="15" src="../img/15.png"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >서울역</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/CA/F228EE-7FA2-462E-B494-2D8D10E9B3DC.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>날짜</td> 
                         <td><p class="d-day">
						</td>
                       </tr>
                       <tr>
                        <td align="center"><img alt="all" src="../img/all.png"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >카이:거울 호수의 전설</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/21/55B0E2-C366-4422-BC31-3062D589F97D.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>날짜</td> 
                         <td><p class="d-day">
						</td>
                       </tr>
                       <tr>
                        <td align="center"><img alt="15" src="../img/15.png"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >플로렌스</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/5A/0DE593-2280-4CC1-A48A-4D6C2A2858E3.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>날짜</td> 
                         <td><p class="d-day">
						</td>
                       </tr>
                       <tr>
                        <td align="center"><img alt="15" src="../img/15.png"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >라이트 아웃</a></td>
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
                         <td colspan="2"><img src="http://image2.megabox.co.kr/mop/poster/2016/CC/6FA238-A2C7-4E29-BDAD-82CEF774C351.medium.jpg"></td>
                       </tr>
                       <tr>
                        <td>날짜</td> 
                         <td><p class="d-day">
					     </td>
                       </tr>
                       <tr>
                        <td align="center"><img alt="15" src="../img/15.png"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >올레</a></td>
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