<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统登陆</title>
</head>
<body>
	<center>
		<h1>系统登陆</h1>
		<hr>
		<form action="login.jsp" method="post">
			用户名：<input type="text" name="username"><br>
			密&nbsp;&nbsp;码：<input type="password" name="password"><br>
			<input type="submit" value="登录">
		</form>
		
		<%
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			if(!(("".equals(username)|| username==null)&&("".equals(password)|| password==null))){
				//假设用户名是abc,密码是123
				if("abc".equals(username) && "123".equals(password)){
					session.setAttribute("username", username);//登录后，设置session
					response.sendRedirect("welcome.jsp");
				}else{
				%>
					<h3>错误的用户名或密码</h3>
				<%
				}
			}
		 %>
	</center>

</body>
</html>