<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화상세정보</title>
<style type="text/css">

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
.star_rating a:HOVER  { color:#777;}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
$( ".star_rating a" ).click(function() {
    $(this).parent().children("a").removeClass("on");
    $(this).addClass("on").prevAll("a").addClass("on");
    return false;
});
</script>
</head>
<body>

	<table class="movie_Detail" align="center" width="1000px">

		<!--기본정보-->
		<tbody>
			<tr>
				<td rowspan="1" width="250px" height="350px"><img alt="" src="">
				</td>
				<td width="750px">
					<h2>
						<i class=""></i>영화제목
					</h2>
					<hr color="purple"> <span style="float: right"> <input
						type="button" id="btn1" value="예매하기"
						style="background-color: purple; color: white; width: 100px; height: 40px;">
				</span>
					<h3>
						평점 : <strong>/</strong>
					</h3>
					<p>장르 :</p>
					<p>감독 :</p>
					<p>상영시간 :</p>
					<p>개봉일</p>
				</td>
			</tr>
			<tr>
				<td colspan="2"><h4>
						줄거리
						</h3></td>
			</tr>
		</tbody>
	</table>
	<table class="command" align="center" width="1000px">
		<tbody>
			<tr>
				<td colspan="2">
					<h4>
						한줄평
						</h3>
				</td>
				
			</tr>
			<tr style="border: 1px solid #e1e8f0;">
				<td width="150px">
				<p class="star_rating">
						<a href="#" class="on" id="a">★</a> <a href="#" class="on" id="b">★</a> <a
							href="#" class="on" id="c">★</a> <a href="#" id="d">★</a> <a href="#" id="e">★</a>
					</p>
				</td>
				<td colspan="2" width="850px"><textarea title="댓글쓰기" id="btn2"
						name="comment" rows="5" style="width: 88%; resize: none;">
				</textarea> <span style="float: right"> <input type="button"
						name="comment" value="등록"
						style="background-color: #e1e8f0; color: #9fa8a3; font-size: 18px; font-weight: bold; width: 93px; height: 80px;" /></span>
				</td>
				
			</tr>
			<tr>
				<td colspan="2"><hr color="#e1e8f0"></td>
			</tr>
		</tbody>
	</table>
</body>
</html>