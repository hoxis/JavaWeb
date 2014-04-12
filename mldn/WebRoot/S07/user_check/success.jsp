<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="reg" class="com.liuhao.demo.Register" scope="request"/>

	用户名：<jsp:getProperty property="name" name="reg"/><br>
	年龄：<jsp:getProperty property="age" name="reg"/><br>
	E-mail：<jsp:getProperty property="email" name="reg"/>
</body>
</html>