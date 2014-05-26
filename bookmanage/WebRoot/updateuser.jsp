<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新用户信息</title>
</head>
<body>
	<%
		if(session.getAttribute("user") == null){
			session.setAttribute("HasNotLoginMessage", "您尚未登录，请登录");
			response.sendRedirect("/bookmanage");
		}
	 %>
	<center>
		<h1>
			<font color="red">更新用户</font>
		</h1>

	<s:form action="update_user">
		<table>
				<s:hidden name="user.userid" value="%{user.userid}" />
				<s:hidden name="user.password" value="%{user.password}"/>
				<s:textfield name="user.username" value="%{user.username}"
					label="%{getText('username')}" />
				<s:textfield name="user.age" value="%{user.age}"
					label="%{getText('age')}" />
				<s:radio name="user.gender" value="%{user.gender}" list="%{#{'男':'男','女':'女','保密':'保密'}}" 
					label="%{getText('gender')}"/>
				
				<tr>
                    <td colspan="2" align="center">
                    	<s:reset  value="%{getText('reset')}" theme="simple"/>
                        <s:submit value="%{getText('submit')}" theme="simple"  /> 
                    </td>
				</tr>
			</table>
	</s:form>
	
	<table align="center">
		<tr>
			<td colspan="7" align="right">
			<s:a href="welcome.jsp">返回</s:a>
		</td>
		</tr>	
	</table>
	

	</center>

</body>
</html>