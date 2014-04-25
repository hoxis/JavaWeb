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
		// 在page属性范围中保存一个日期
		pageContext.setAttribute("dateref", new java.util.Date());
	%>
	
	<fmt:parseDate value="2009年12月16日 星期三 下午06时15分24秒 CST" type="both"
		dateStyle="full" timeStyle="full" var="date" />
	<h3>字符串   "2009年12月16日 星期三 下午06时15分24秒 CST"  变为日期：${date}</h3>
	
	<fmt:parseDate value="2009年12月16日 18时45分34秒129毫秒"
		pattern="yyyy年MM月dd日 HH时mm分ss秒SSS毫秒" var="date" />
	<h3>字符串   "2009年12月16日 18时45分34秒129毫秒     "变为日期：${date}</h3>

</body>
</html>