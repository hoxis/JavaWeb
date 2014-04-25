<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:parseNumber value="3,531,989.357" var="num" />
	<h3>反格式化数字3,531,989.357：${num}</h3>
	<fmt:parseNumber value="3.532E6" pattern="##.###E0" var="num" />
	<h3>反科学计数法3.532E6：${num}</h3>
	<fmt:parseNumber value="3.5%" pattern="00%" var="num" />
	<h3>反百分比3.5%：${num}</h3>
</body>
</html>