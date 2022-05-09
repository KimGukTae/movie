<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
th,td{
	text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="membersave" method="post">
	<table border="1" width="700" align="center">
		<tr>
			<th>아이디</th><br>
			<th>패스워드</th><br>
			<th>등급</th><br>
		</tr>
		<tr>
			<td>
				<input type="text" name="id">
			</td>
			<td>
				<input type="text" name="pw">
			</td>
			<td colspan="2">
				관리자<input type="radio" id="class" name="admin" value="관리자">
				관객<input type="radio" id="class" name="admin" value="관객">
			</td>
			<td colspan="2">
				<input type="submit" value="전송">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>
</body>
</html>