<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>访问次数统计</title>
</head>
<body>
<table>
	<tr>
		<th>序号</th><th>url地址</th><th>访问次数</th>
	</tr>
	<c:forEach items="${accessList }" var="access" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${access.key }</td>
			<td>${access.value }</td>
		</tr>	
	</c:forEach>
</table>
<h3>在线人数：${applicationScope.sum }</h3>
</body>
</html>