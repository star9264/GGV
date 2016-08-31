<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%request.setCharacterEncoding("utf-8");
		String movie_idx = request.getParameter("movie_idx");
	%>
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

/* rating */
 .rating {
    width: 250px;
    height: 34px;
    background-color: #f6f3f3;
}
 
 .rating label {
   	text-indent: -100px;
    width: 40px !important;
    height: 30px;
    overflow: hidden;
    cursor: pointer;
}

 .label {
    float: left;
    padding-top: 3px;
}
        
 input[type="radio"] {
    padding-right: 4px;
    position: absolute; 
    left: 340px;
    margin-top: 10px;
}
                 
 input[type="radio"], .rating label.stars {
    float: right;
    line-height: 30px;
    height: 30px;
}
 
 span + input[type=radio] + label, legend + input[type=radio] + label {
    clear: right;
    margin-right: 80px;
    counter-reset: checkbox;
} 
 

 
 .rating label.stars {
    background: transparent url('img/star_off.png') no-repeat center center;
} 
 
.rating label.stars:hover ~ label.stars, 
.rating label.stars:hover, 
.rating input[type=radio][name=stars]:checked ~ label.stars {
    background-image: url('img/star.png');
    counter-increment: checkbox;
} 
  
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
$( ".star_rating a" ).click(function() {
    $(this).parent().children("a").removeClass("on");
    $(this).addClass("on").prevAll("a").addClass("on");
    return false;
});

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

function reserve_go(f) {
	f.action="movielist.do";
	f.submit();
}
function comment_go(f) {
	f.action = "comment_rev.do?id=${info.member_id}";
	f.submit();
}
</script>
</head>
<body>
<form method="post">
     	<div align="center">
			<span><input type="button" value="박스오피스" id="top_btn"onclick="list01(this.form)" /></span> 
				<span><input type="button" value="최신개봉작" id="top_btn" onclick="list02(this.form)" /></span> 
				<span><input type="button" value="상영예정작" id="top_btn" onclick="list03(this.form)" /></span>
		</div>
	<table class="movie_Detail" align="center" width="1000px">

		<!--기본정보-->
		<tbody>
			<tr>
				<td rowspan="1" width="250px" height="350px"><img alt="" src="${movie_VO.poster}">
				</td>
				<td width="750px">
					<h2>
						<i class=""></i>${movie_VO.title}<%= movie_idx%>
					</h2>
					<hr color="purple"> <span style="float: right"> <input
						type="button" id="btn1" value="예매하기" onclick="reserve_go(this.form)"
						style="background-color: purple; color: white; width: 100px; height: 40px;">
				</span>
					<h3>
						평점 : ${movie_VO.rate}
					</h3>
					<p>장르 : ${movie_VO.genre}</p>
					<p>감독 : ${movie_VO.director}</p>
					<p>상영시간 : ${movie_VO.running_time}</p>
					<p>개봉일 : ${movie_VO.start_time.substring(0,10)}</p>
				</td>
			</tr>
			<tr>
				<td colspan="2"><h4>
						${movie_VO.story}
						</h4></td>
			</tr>
		</tbody>
	</table>
	<table class="command" align="center" width="1000px" border="1px">
		<tbody>
			<tr>
				<td colspan="2">
					<h4>
						한줄평
						</h4>
				</td>
				
			</tr>
			<tr style="border: 1px solid #e1e8f0;">
				<td width="150px" align="center">
						 <!-- <select name="combo" style="width: 80px; height: 30px;" >
                           <OPTION value="0">0점</OPTION>
                           <OPTION value="1">1점</OPTION>
                           <OPTION value="2">2점</OPTION>
                           <OPTION value="3">3점</OPTION>
                           <OPTION value="4">4점</OPTION>
                           <OPTION value="5">5점</OPTION>
                           <OPTION value="6">6점</OPTION>
                           <OPTION value="7">7점</OPTION>
                           <OPTION value="8">8점</OPTION>
                           <OPTION value="9">9점</OPTION>
                           <OPTION value="10">10점</OPTION>
                         </select>  -->

						<fieldset class="rating"> 
					        <input type="radio" name="stars" id="4_stars" value="10" >
					        <label class="stars" for="4_stars">4 stars</label>
					        <input type="radio" name="stars" id="3_stars" value="8" >
					        <label class="stars" for="3_stars">3 stars</label>
					        <input type="radio" name="stars" id="2_stars" value="6" >
					        <label class="stars" for="2_stars">2 stars</label>
					        <input type="radio" name="stars" id="1_stars" value="4" >
					        <label class="stars" for="1_stars">1 star</label>
					        <input type="radio" name="stars" id="0_stars" value="2" >
					        <label class="stars" for="0_stars">0 star</label>
					        <span  class="label"> 별점 : </span>
					       <!--  <input type="button" name="send" value="등록" onclick="send_go()"> -->
					    </fieldset>


					</td>
				<td colspan="2" width="850px">
					<textarea title="댓글쓰기" id="btn2" name="comment" rows="5" style="width: 80%; resize: none; display: inline-block;"  ></textarea> 
					<span style="float: right"> 
						<input type="button"name="comment" value="등록"	
						style="background-color: #e1e8f0; color: #9fa8a3; font-size: 18px; font-weight: bold; width: 93px; height: 80px;" onclick="comment_go(this.form)" />
						<input type="hidden" name="movie_idx"  value="<%=movie_idx%>"/>
					</span>
				</td>
				
			</tr>
			<tr>
				<td colspan="2"><hr color="#e1e8f0"></td>
			</tr>
		</tbody>
	</table>
	</form>
</body>
</html>