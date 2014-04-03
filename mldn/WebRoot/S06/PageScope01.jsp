<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//通过pageContext的重载方法设置为request属性范围
		pageContext.setAttribute("name", "liuhao", PageContext.REQUEST_SCOPE);
		pageContext.setAttribute("date", new Date(), PageContext.REQUEST_SCOPE);
	%>
	<jsp:forward page="PageScope02.jsp"></jsp:forward>
</body>
</html>