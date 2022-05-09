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
<h2 style="text-align: center;">회원출력</h2>
<table border="1" width="500">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>등급</th>
	</tr>
	<c:forEach items="${list}" var="dto">
		<td>
	</c:forEach>
</table>
</body>
</html>