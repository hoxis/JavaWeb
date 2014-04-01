<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>my jsp</title>
</head>

<body>
	<%
		String str = request.getParameter("info");//接收表单参数

		out.println("<h1>" + str + "</h1>");
	%>
</body>
</html>
