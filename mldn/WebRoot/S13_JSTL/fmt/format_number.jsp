<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:formatNumber value="354232321.3423132" maxIntegerDigits="10" maxFractionDigits="3" groupingUsed="true" var="num"/>
	<h3>格式化数字：${num }</h3>
	
	<fmt:formatNumber value="354232321.3423132" pattern="##.###E0" var="num"/>
	<h3>科学计数法：${num }</h3>
</body>
</html>