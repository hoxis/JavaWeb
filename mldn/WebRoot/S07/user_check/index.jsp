<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="reg" class="com.liuhao.demo.Register" scope="request"/>
	
	<form action="check.jsp" method="post">
	
		<!-- 设置value值，若有值则会从属性中读出，从而保证输入正确时，输入的值得以保留 -->
		用户名：<input type="text" name="name" value="<jsp:getProperty property="name" name="reg"/>">
			<%=reg.getErrorMsg("nameErr") %><br><!-- 一直在获取错误信息，若没有则显示"" -->
			
		年&nbsp;&nbsp;&nbsp;&nbsp;龄：<input type="text" name="age" value="<jsp:getProperty property="age" name="reg"/>">
			<%=reg.getErrorMsg("ageErr") %><br>
		&nbsp;E-mail：<input type="text" name="email" value="<jsp:getProperty property="email" name="reg"/>">
			<%=reg.getErrorMsg("emailErr") %><br>
			
		<input type="submit" value="注册"><input type="reset" value="重置">
	</form>

</body>
</html>