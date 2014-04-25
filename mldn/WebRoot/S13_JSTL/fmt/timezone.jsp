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
	<%
		//在page属性范围内保存一个日期
		pageContext.setAttribute("date", new java.util.Date());
	%>

	<fmt:timeZone value="HST">
		<fmt:formatDate value="${date }" type="both" dateStyle="full"
			timeStyle="full" var="format_date" />
	</fmt:timeZone>
	<h3>full显示日期时间：${format_date }</h3>
</body>
</html>