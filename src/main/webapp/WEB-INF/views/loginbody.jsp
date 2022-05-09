<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="loginsave" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
		</tr>
		<tr>
			<td>
				<input type="text" name="id">
			</td>
			<td>
				<input type="text" name="pw">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="loginsave"><input type="submit"  value="전송" ></a>
				<a href="loginform"><input type="submit"  value="회원가입"></a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>