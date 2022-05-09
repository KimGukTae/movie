<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<style>
  th, td {
    border: 1px solid #444444;
  }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post" style="padding-left: 400px;">
<h2 style="padding-left: 300px;">영화 예매</h2>
	<table style=" width: 700px;  border: 1px solid #444444; text-align: center;">
		<tr>
			<th>아이디</th>
			<c:forEach items="${list}" var="dto">
				<td>
					<input type="text" name="id" value="${dto.id}" readonly="readonly">
				</td>
			</c:forEach>	
		</tr>
		<tr>
			<th>영화제목</th>
				<td>
					외계+인<input type="radio" name="movie"><br>
					범죄도시2<input type="radio" name="movie"><br>
					닥터 스트레인지: 대혼돈의 멀티버스<input type="radio" name="movie"><br>
					신비한 동물들과 덤블도어의 비밀<input type="radio" name="movie"><br>
				</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="영화예매">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>