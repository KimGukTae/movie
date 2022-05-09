<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="logintop">
			<tiles:insertAttribute name="logintop"/>
		</div>
		<div id="loginbody">
			<tiles:insertAttribute name="loginbody"/>
		</div>
		<div id="loginfooter">
			<tiles:insertAttribute name="loginfooter"/>
		</div>
	</div>
</body>
</html>