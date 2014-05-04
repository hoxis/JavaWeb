<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<center>
		<h1>
			<font color="red">更新用户</font>
		</h1>

	<s:form action="updateUser">
		<s:hidden name="user.id" value="%{user.id}" />
		<s:textfield name="user.firstname" value="%{user.firstname}"
			label="%{getText('firstname')}" />
		<s:textfield name="user.lastname" value="%{user.lastname}"
			label="%{getText('lastname')}" />
		<s:textfield name="user.age" value="%{user.age}"
			label="%{getText('age')}" />
		<s:submit></s:submit>
	</s:form>

	</center>
</body>
</html>