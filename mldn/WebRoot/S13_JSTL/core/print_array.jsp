<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//定义数组
		String[] info = { "liuhao", "nupt", "徐州人氏","南京" };
		pageContext.setAttribute("info", info);
	%>

	<h3>
		输出全部(默认间隔)：
		<c:forEach items="${info }" var="a">
	 		${a },
	 	</c:forEach>
	</h3>
	<h3>
		输出全部(间隔为2)：
		<c:forEach items="${info }" var="b" step="2">
			${b },
		</c:forEach>
	</h3>
	<h3>
		输出前两个：
		<c:forEach items="${info }" var="c" begin="0" end="1">
			${c },
		</c:forEach>
	</h3>
</body>
</html>