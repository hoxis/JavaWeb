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
		//准备好两个Cookie
		Cookie name = new Cookie("name", "liuhao");
		Cookie password = new Cookie("password","123321");
		
		//通过response设置到客户端
		response.addCookie(name);
		response.addCookie(password);
	 %>

</body>
</html>