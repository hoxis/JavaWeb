<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="register"></s:text></title>
</head>
<body>
	<center>
		<h1><font color="red"><s:text name="system"></s:text></font></h1>
		<s:form action="userRegister">
			<table border="1">
				<s:textfield name="user.username" label="%{getText('username')}"/>
				<s:password name="user.password" label="%{getText('password')}"> </s:password>
				<s:textfield name="user.age" label="%{getText('age')}"/> 
				<s:textfield name="user.gender" label="%{getText('gender')}"/>
				
				<tr>
                    <td colspan="2" align="center">
                    	<s:reset  value="%{getText('reset')}" theme = "simple"/>
                        <s:submit value="%{getText('register')}" theme="simple"  /> 
                    </td>
				</tr>
			</table>
		</s:form>
	</center>
	
		<table align="center">
		<tr>
			<td colspan="7" align="right">
			<s:a href="welcome.jsp">返回</s:a>
		</td>
		</tr>	
	</table>
	
</body>
</html>