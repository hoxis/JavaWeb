<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//设置一个page范围的属性
		pageContext.setAttribute("date", new Date());
	 %>
	 
	 <h3>中文时间显示：
	 	<fmt:setLocale value="zh_CN"/>
	 		<fmt:formatDate value="${date }"/>
	 </h3>
	 
	 <h3>英文时间显示：
	 	<fmt:setLocale value="en_US"/>
	 		<fmt:formatDate value="${date }"/>
	 </h3>
</body>
</html>