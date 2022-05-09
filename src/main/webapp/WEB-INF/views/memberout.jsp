<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
th,td{
	border: 1px solid #444444;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" style="padding-left: 400px;">
	<h2 style="padding-left: 300px;">회원목록</h2>
	<table style=" width: 700px;  border: 1px solid #444444; text-align: center;">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>등급</th>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.id }</td>
				<td>${dto.pw }</td>
				<td>${dto.admin }</td>
			</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>