<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>正在注销</title>
</head>
<body>
	<%
		if(session.getAttribute("user") == null){
			session.setAttribute("HasNotLoginMessage", "您尚未登录，请登录");
			response.sendRedirect("/bookmanage");
		}
	 %>
	<%
		response.setHeader("refresh", "1;URL=/bookmanage");//定时跳转
		session.invalidate();//注销
	 %>
	 
	 <h3>您已成功注销，1秒后返回登录页面！</h3>
	 <h3>若没有成功跳转，请点击<a href="index.jsp">这里</a></h3>
	
</body>
</html>