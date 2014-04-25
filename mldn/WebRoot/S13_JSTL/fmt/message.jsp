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
	<fmt:bundle basename="message">
		<fmt:message key="name" var="nameref"/>
	</fmt:bundle>
	<h3>姓名：${nameref }</h3>
	
	<fmt:bundle basename="message">
		<fmt:message key="info" var="inforef">
			<fmt:param value="刘浩"/>
		</fmt:message>
	</fmt:bundle>
	<h3>信息：${inforef }</h3>
</body>
</html>