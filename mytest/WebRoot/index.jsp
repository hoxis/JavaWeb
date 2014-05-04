<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My JSP 'index.jsp' starting page</title>
</head>

<body>

	<h2>
		<font color="red">操作列表</font>
	</h2>

	<s:a href="save.jsp">Save User</s:a>
	<br>
	<br>

	<s:a href="listUser.action">List Users</s:a>

</body>
</html>
