<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//初始化map
		Map<String, String> map = new HashMap<String, String>();
		map.put("小学", "彭庄");
		map.put("中学", "丰县");
		map.put("大学", "镇江");
		map.put("研究僧", "南京");
		map.put("未来", "x");
		pageContext.setAttribute("infos", map);
	%>
	刘浩的信息：
	<c:forEach items="${infos }" var="info">
		<h3>${info.key }-->${info.value }</h3>
	</c:forEach>
</body>
</html>