<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
    function detail_go(f) {
		f.action="movie_detail.do"
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
			<span><input type="button" value="박스오피스" id="top_btn"onclick="list01(this.form)" /></span> 
				<span><input type="button" value="최신개봉작" id="top_btn" onclick="list02(this.form)" /></span> 
				<span><input type="button" value="상영예정작" id="top_btn" onclick="list03(this.form)" /></span>
		</div>
		<table align="center" style="margin-top: 50px;">
		  <body>
			<tr>
			<c:forEach var="k" items="${list}" begin="0" end="3" varStatus="st">
				<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="${k.poster }"></td>
                       </tr>
                       <tr>
                          <td align="center">개봉일</td> 
                         <td><p class="d-day" style="margin-top: 3px; margin-bottom: 3px; " align="center">${k.start_time.substring(0,10)}</p></td>
                       </tr>
                       <tr>
                            <td align="center"><img alt="12" src="${k.age_img }" style="width: 17px;height: 17px; margin-top: 3px;"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >${k.title}</a></td>
                       </tr>
                       <tr>
                        <td colspan="2" align="center">
                        <input type="hidden" name="movie_idx" value="${k.movie_idx}"/>
                       <input type="button" value="상세정보" id="btn2" name="detail" onclick="detail_go(this.form)">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
				</c:forEach>
				</tr>
				<tr>
			    <c:forEach var="k" items="${list}" begin="4" end="7" varStatus="st">
				<td>
					<table border="1" style="border-collapse: collapse; border-color: #e9ece5; margin-right:15px;">
                       <tr>
                         <td colspan="2"><img src="${k.poster }"></td>
                       </tr>
                       <tr>
                          <td align="center">개봉일</td> 
                         <td><p class="d-day" style="margin-top: 3px; margin-bottom: 3px; " align="center">${k.start_time.substring(0,10)}</p></td>
                       </tr>
                       <tr>
                           <td align="center"><img alt="12" src="${k.age_img }" style="width: 17px;height: 17px; margin-top: 3px;"> </td>
                        <td style="font-weight: bold; font-size: 18px; color: black;"><a href="" >${k.title}</a></td>
                       </tr>
                       <tr>
                        <td colspan="2" align="center">
                        <input type="hidden" name="movie_idx" value="${k.movie_idx}"/>
                       <input type="button" value="상세정보" id="btn2" name="detail" onclick="detail_go(this.form)">
                         <input type="button" value="예매하기" id="btn2"></td>
                       </tr>
					</table>
				</td>
				</c:forEach>
				</tr>
				</body>
				</table>
				
</form>
</body>
</html>