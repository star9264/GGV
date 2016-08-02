<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    border: 1px solid white;
    background-color: white;
  	color: #c9c9c9;
  	text-align: center;
  	text-decoration: none;
	}
	
	li{
		display: block;
		float: left;
		color: #c9c9c9;
		text-decoration: none;
		border: 1px solid white;
		font-size: 30px;
		margin-top: 20px;
		margin-right: 30px;
	}
	li a{
		text-decoration: none;
		color: #c9c9c9;
	}
	li a:hover{
		color : #6ed3cf;
	}
	
</style>
<script type="text/javascript">
	function imgChg(img) {
		document.img_hover.src=img;
	}
</script>
</head>
<body>
	<div>
		<ul id="list">
			<li id="site">
			<img alt="" src="img/logo.PNG" onmouseout="imgChg('img/logo.PNG')" onmousemove="imgChg('img/map.PNG')" name="img_hover" height="70px" width="70px"> 
			</li>
			<div style="margin-top: 20px">
				<li><a href=#>HOME</a></li>
				<li><a href=#>영화</a></li>
				<li><a href=#>영화관</a></li>
				<li><a href=#>스토어</a></li>
				<li><a href=#>로그인</a></li>
			</div>
		</ul>
	</div>
	
</body>
</html>