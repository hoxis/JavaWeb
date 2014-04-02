<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//此时设置的属性只能在服务器跳转中获得
		request.setAttribute("name", "liuhao");
		request.setAttribute("date", new Date());
	%>
	
	<jsp:forward page="RequestScopeTest02.jsp"/>

</body>
</html>