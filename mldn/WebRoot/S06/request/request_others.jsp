<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String method = request.getMethod();		//取得提交方式
		String ip = request.getRemoteAddr();		//取得客户端的ip地址
		String path = request.getServletPath();		//取得访问路径
		String contextPath = request.getContextPath();//取得上下文资源名称
	 %>
	 
	 <h3>请求方式：<%=method %></h3>
	 <h3>ip地址：<%=ip %></h3>
	 <h3>访问路径：<%=path %></h3>
	 <h3>上下文名称：<%=contextPath %></h3>

</body>
</html>