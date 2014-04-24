<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%pageContext.setAttribute("info", "heloo,liuhao!"); %>
	<h3>属性存在：<c:out value="${info }"/></h3>
	<h3>属性不存在：<c:out value="${ref }" default="没有此内容"/></h3>
	<h3>属性不存在：<c:out value="${ref }"/>木有此内容</h3>
</body>
</html>