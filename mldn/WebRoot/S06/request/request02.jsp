<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String[] interest = request.getParameterValues("interest");
	%>

	<h2>
		姓名：<%=name%></h2>
	<h2>
		兴趣：
		<%
		for (int i = 0; i < interest.length; i++) {
	%>
		<%=interest[i]%>
		<%
			}
		%>
	</h2>
</body>
</html>