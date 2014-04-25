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

	<fmt:formatDate value="${date }" type="both" dateStyle="default"
		timeStyle="default" var="format_date" />
	<h3>default显示日期时间：${format_date }</h3>

	<fmt:formatDate value="${date}" type="both" dateStyle="short"
		timeStyle="short" var="format_date" />
	<h3>short显示日期时间：${format_date}</h3>

	<fmt:formatDate value="${date}" type="both" dateStyle="medium"
		timeStyle="medium" var="format_date" />
	<h3>medium显示日期时间：${format_date}</h3>

	<fmt:formatDate value="${date}" type="both" dateStyle="long"
		timeStyle="long" var="format_date" />
	<h3>long显示日期时间：${format_date}</h3>

	<fmt:formatDate value="${date}" type="both" dateStyle="full"
		timeStyle="full" var="format_date" />
	<h3>full显示日期时间：${format_date}</h3>

	<fmt:formatDate value="${date}" type="both"
		pattern="yyyy年MM月dd日 HH时mm分ss秒SSS毫秒" var="format_date" />
	<h3>自定义格式显示日期时间：${format_date}</h3>

</body>
</html>