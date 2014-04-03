<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>这里是sessionScopeTest03</h1>
	<%
		//取得session的属性
		String name = (String) session.getAttribute("name");
		Date date = (Date) session.getAttribute("date");
	%>

	<h2>
		姓名：<%=name%></h2>
	<h2>
		日期：<%=date%></h2>

</body>
</html>