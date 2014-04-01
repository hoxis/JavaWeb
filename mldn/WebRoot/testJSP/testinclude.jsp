<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include test</title>
</head>
<body>

	<h1>测试@include test</h1>
	<%@include file="content.html"%>
	<%@include file="content.txt"%>
	<%@include file="content.inc"%>

	<h1>测试jsp:include</h1>
	<jsp:include page="content.html"/>
	<jsp:include page="content.txt"/>
	<jsp:include page="content.inc"/>
</body>
</html>