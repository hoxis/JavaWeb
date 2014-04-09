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
		if(session.isNew()){//用户第一次访问
		%>
			<h2>欢迎你，新用户！</h2>
		<%
		}else{//再次访问本页面
		%>
			<h2>您已登录过。</h2>
		<%
		}
	 %>

</body>
</html>