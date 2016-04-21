<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spittr</title>
<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/style.css" />">
</head>
<body>
	<!-- 头部 -->
	<div id="header">
		<t:insertAttribute name="header" />
	</div>
	<!-- 正文 -->
	<div id="content">
		<t:insertAttribute name="body" />
	</div>
	<!-- 尾部 -->
	<div id="footer">
		<t:insertAttribute name="footer" />
	</div>
</body>
</html>