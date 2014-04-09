<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>您已成功登录</title>
</head>
<body>
	<%
		if(session.getAttribute("username")!=null){
		%>
			<h1>欢迎<%=session.getAttribute("username") %>光临！<br>
				<a href="logout.jsp">注销</a>
			</h1>
		<%
		}else{//非法用户
		%>
			<h2>请先<a href="login.jsp">登录!</a></h2>
		<%
		}
	 %>

</body>
</html>