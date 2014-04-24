<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//定义集合
		List<String> all = new ArrayList<String>();
		all.add("刘浩");
		all.add("南邮");
		all.add("镇江");
		all.add("江苏大学");
		pageContext.setAttribute("all", all);
	 %>
	 
	 <h3>
	 	输出全部：
	 	<c:forEach items="${all }" var="info">
	 		${info }，
	 	</c:forEach>
	 </h3>
</body>
</html>