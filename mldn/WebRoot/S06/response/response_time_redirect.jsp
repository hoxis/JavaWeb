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
		//3秒后跳转到index.html
		response.setHeader("refresh", "3;URL=response_index.html");
	 %>
	<h3>3秒后跳转到首页</h3>
	<h3>如果没有跳转，请点击<a href="response_index.html">这里</a>！</h3>

</body>
</html>