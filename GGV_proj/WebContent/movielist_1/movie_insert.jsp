<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function movie_insert_ok(f) {
	f.action="movie_insert_ok.do";
	f.submit();
}
</script>
</head>
<body>
	<form method="post">
		<table align="center">
			<tbody>
				<tr>
					<td>영화제목  </td>
					<td><input type="text" name="title" size="30" height="10"></td>
				</tr>
				<tr>
					<td>스토리  </td>
					<td><input type="text" name="story" size="30" height="10"></td>
				</tr>
				<tr>
					<td>장르  </td>
					<td><input type="text" name="genre" size="30" height="10"></td>
				</tr>
				<tr>
					<td>감독  </td>
					<td><input type="text" name="director" size="30" height="10"></td>
				</tr>
				<tr>
					<td>캐스트  </td>
					<td><input type="text" name="cast" size="30" height="10"></td>
				</tr>
				<tr>
					<td>상영시간  </td>
					<td><input type="text" name="running_time" size="30" height="10"></td>
					<td><span> ex) 120분 </span></td>
				</tr>
				<tr>
					<td>포스터  </td>
					<td><input type="text" name="poster" size="30" height="10"></td>
				</tr>
				<tr>
					<td>시작시간  </td>
					<td><input type="text" name="start_time" size="30" height="10"></td>
					<td><span> ex) 16/08/20 </span></td>
				</tr>
				<tr>
					<td>관람등급  </td>
					<td><input type="text" name="age_img" size="30" height="10"></td>
				</tr>
			</tbody>
			<tfoot align="center">
				<tr>
					<td colspan="2"><input type="button" value="영화등록" onclick="movie_insert_ok(this.form)"/></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>