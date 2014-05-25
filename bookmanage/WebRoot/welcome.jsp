<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎来到图书管理系统</title>
</head>
<body>

	<%
		if(session.getAttribute("user") == null){
			session.setAttribute("HasNotLoginMessage", "您尚未登录，请登录");
			response.sendRedirect("/bookmanage/index.jsp");
		}
	 %>
	<center>
		<h2>欢迎你，<s:property value="#session.user.username"/> </h2>	
		<s:fielderror cssStyle="color:red"></s:fielderror>
	</center>
		<table align="center">
			<tr><td>你可以：</td></tr>
			<tr>
				<td><s:a href="pupdate_user.action?user.userid=%{#session.user.userid}">修改个人信息</s:a></td>
			</tr>
			<tr>
				<td><s:a href="addbook.jsp">添加图书</s:a></td>
			</tr>
			<tr>
				<td><s:a href="list_book.action">查看全部图书</s:a></td>
			</tr>
			
			<tr>
				<td><s:a href="list4page_book.action?page=1">分页查看图书</s:a></td>
			</tr>
			
			
			<tr align="right">
				<td colspan="2"><a href="logout.jsp">注销</a></td>
			</tr>
		</table>
</body>
</html>