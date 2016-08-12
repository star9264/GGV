<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	List<Integer> list = (List<Integer>)request.getAttribute("list");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
input[name="chkseat"]+label {
	position: relative;
	display: inline-block;
	background-image: url("/GGV_proj/img/able.jpg");
	width: 50px;
	height: 50px;
	border: none;
	cursor: pointer;
}

input[name="chkseat"]:checked+label {
	background-image: url("/GGV_proj/img/selected.jpg");
}

input[name="chkseat"]:disabled+label {
	background-image: url("/GGV_proj/img/disable.jpg");
}

input[name="reserved"]+label {
	position: relative;
	display: inline-block;
	background-image: url("/GGV_proj/img/able.jpg");
	width: 50px;
	height: 50px;
	border: none;
	cursor: pointer;
}

input[name="reserved"]:checked+label {
	background-image: url("/GGV_proj/img/selected.jpg");
}

input[name="reserved"]:disabled+label {
	background-image: url("/GGV_proj/img/disable.jpg");
}

.seats {
	position: absolute;
	left: -9999px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	var max = 8;
	$(document).ready(function() {

	});
	function check() {
		if ($('input[name=chkseat]:checked').length >= max) {
			$('input[name=chkseat]').not('input[type=checkbox]:checked').prop(
					"disabled", true);
		} else {
			$('input[name=chkseat]').not('input[type=checkbox]:checked').prop(
					"disabled", false);
		}
	}
</script>
</head>
<body>
	<h2><%=request.getParameter("title") %></h2>
	<form action="reserv_chk.do" method="post">
		<div>
			<%
				seat: for (int i = 0; i < 50; i++) {
					if (i != 0 && i % 10 == 0) {
			%>
			<br> <br> <br>
			<%
				}
					for (int j = 0; j < list.size(); j++) {
						if ((i + 1) == list.get(j)) {
			%>
			<input class="seats" type="checkbox" name="reserved"
				id="seat<%=i + 1%>" value="<%=i + 1%>" disabled="disabled"><label
				for="seat<%=i + 1%>" style="text-align: center;"><%=i + 1%></label>
			<%
				continue seat;
						} else {
							continue;
						}
					}
			%>
			<input class="seats" type="checkbox" name="chkseat" id="seat<%=i + 1%>"
				value="<%=i + 1%>" onclick="check()"><label for="seat<%=i + 1%>"
				style="text-align: center;"><%=i + 1%></label>
			<%
				}
			%>
		</div>
		<input type="hidden" value="<%=request.getParameter("reserve_date")%>" name="reserve_date" />
		<input type="hidden" value="<%=request.getParameter("reserve_time")%>" name="reserve_time" />
		<input type="hidden" value="${info.member_id}" name="member_id" />
		<input type="hidden" value="<%=request.getParameter("movie_idx") %>" name="movie_idx" />		
		<input type="submit" value="예매하기">
	</form>
</body>
</html>








