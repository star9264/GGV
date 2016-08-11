<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Calendar cal = Calendar.getInstance();
	int today_year = cal.get(Calendar.YEAR);
	int today_month = cal.get(Calendar.MONTH) + 1;
	int today_day = cal.get(Calendar.DAY_OF_MONTH);

	String y = request.getParameter("year");
	String m = request.getParameter("month");
	String d = request.getParameter("day");

	int year, month, day;

	if (y == null) {
		year = today_year;
		month = today_month;
		day = today_day;
	} else {
		year = Integer.parseInt(y);
		month = Integer.parseInt(m);
		day = Integer.parseInt(d);
	}

	cal.set(year, month-1, day);
	int end_day = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	String yoil = null;
	if(dayOfWeek==1){
		yoil = "일";
	}else if(dayOfWeek==2){
		yoil = "월";
	}else if(dayOfWeek==3){
		yoil = "화";
	}else if(dayOfWeek==4){
		yoil = "수";
	}else if(dayOfWeek==5){
		yoil = "목";
	}else if(dayOfWeek==6){
		yoil = "금";
	}else if(dayOfWeek==7){
		yoil = "토";
	}
	
	if(day > end_day) {
		if (month == 12) {
			year = year + 1;
			month = 1;
			day = 1;
		} else {
			month = month + 1;
			day = 1;
		}
	}
	
	if (day < 1) {
		if (month == 1) {
			year = year - 1;
			month = 12;
			cal.set(year, month - 1, 1);
			day = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		} else {
			month = month - 1;
			cal.set(year, month - 1, 1);
			day = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#menu {
	padding-bottom: 100px;
	padding-left: 100px;
}

#tb table {
	padding-top: 10px;
	width: 1000px;
	padding-left: 200px;
	border-spacing: 0px;
	font-size: 15px;
	margin: 0px;
}

#tb table th {
	padding: 5px 10px;
}

#tb table td {
	text-align: center;
	border: 1px solid #dddddd;
	padding: 5px 10px;
}

.no {
	width: 10%
}

.subject {
	width: 50%
}

.state {
	width: 20%
}

.regdate {
	width: 20%
}

.title {
	background-color: #c9c9c9;
	color: #9068be;
}



.movie-subject {
	background-color: #C4C5D4;
	color: white;
	font-size: 16px;
	border: none;
	cursor: pointer;
	height: 100px;
	width: 250px;
}

.movie {
	position: relative;
	display: block;
}

.movie-time {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	height: 100px;
	min-width: 680px;
}

.movie-time a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	text-align:center;
	vertical-align:center;
	height: 76px;
	width: 100px;
	display: inline-block;
}

.movie-time a:hover {
	background-color: #f1f1f1;
}

.movie:hover .movie-time {
	display: inline-block;
}

.movie1:hover .movie-subject {
	background-color: #3e8e41;
}
</style>
</head>
<body>
	<div>
		<a href="/GGV_proj/reservation/reservation.jsp?year=<%=year%>&month=<%=month%>&day=<%=day-1%>"><img src="/GGV_proj/img/pre.png" /></a>
		<span style="font-size: 50px;"><%=month%>. <%=day%>(<%=yoil%>)</span>
		<a href="/GGV_proj/reservation/reservation.jsp?year=<%=year%>&month=<%=month%>&day=<%=day+1%>"><img src="/GGV_proj/img/next.png" /></a>
	</div>
	
	<h1>상영시간표</h1>
	<div class="movie">
		<button class="movie-subject">영화1</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie">
		<button class="movie-subject">영화2</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie">
		<button class="movie-subject">영화3</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie">
		<button class="movie-subject">영화4</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie">
		<button class="movie-subject">영화5</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
</body>
</html>