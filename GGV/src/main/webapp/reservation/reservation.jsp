<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상영시간표</title>
<style type="text/css">
.movie-subject {
	background-color: #4CAF50;
	color: white;
	font-size: 16px;
	border: none;
	cursor: pointer;
	height: 100px;
	width: 250px;
}

.movie1 {
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

.movie1:hover .movie-time {
	display: inline-block;
}

.movie1:hover .movie-subject {
	background-color: #3e8e41;
}
</style>
</head>
<body>
	<h1>상영시간표</h1>
	<div class="movie1">
		<button class="movie-subject">영화1</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie1">
		<button class="movie-subject">영화2</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie1">
		<button class="movie-subject">영화3</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie1">
		<button class="movie-subject">영화4</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
	<div class="movie1">
		<button class="movie-subject">영화5</button>
		<div class="movie-time">
			<a href="#">Link1</a> <a href="#">Link 2</a> <a href="#">Link 3</a> <a href="#">Link 4</a> <a href="#">Link 5</a>
		</div>
	</div>
</body>
</html>