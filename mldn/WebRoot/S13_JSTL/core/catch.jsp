<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:catch var="errmsg">
		<%
			//会产生异常，catch会进行捕获
			int n = 10 / 0;
			int[] a = new int[2];
			int m = a[3];
		 %>
	</c:catch>
	<h3>异常信息：${errmsg }</h3>
</body>
</html>