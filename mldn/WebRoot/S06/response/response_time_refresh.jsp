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

	<%!
		//定义全局变量
		int temp = 0;
	 %>
	 
	 <%
	 	//设置每隔1秒刷新一次
	 	response.setHeader("refresh", "1");
	  %>
	  
	  <h1>已经访问了<%=temp++ %>次。</h1>

</body>
</html>