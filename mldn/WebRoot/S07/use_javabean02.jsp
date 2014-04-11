<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="sb" scope="page" class="com.liuhao.demo.SimpleBean"/>
	<%
		sb.setAge(23);
		sb.setName("刘浩");
	 %>
	 
	 <h3>姓名：<%=sb.getName() %></h3>
	 <h3>年龄：<%=sb.getAge() %></h3>
</body>
</html>