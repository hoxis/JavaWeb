<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="login"></s:text></title>
</head>
<body>
	<center>
		<h1><font color="red"><s:text name="system"></s:text></font></h1>
		
		<%
			if(session.getAttribute("user") != null){
				response.sendRedirect("/bookmanage/welcome.jsp");
			}
		 %>
		
		<font color="red"><s:property value="#session.HasNotLoginMessage"/></font>
		<br>
		<s:fielderror cssStyle="color:red" fieldName="NameOrPasswordError"></s:fielderror>
		<s:form action="userLogin" method="post">
			<table border="1">
				<s:textfield name="user.username" label="%{getText('username')}"></s:textfield>
				<s:password name="user.password" label="%{getText('password')}"> </s:password>
				<tr>
                    <td colspan="2" align="center">
                    	<s:reset  value="%{getText('reset')}" theme="simple"/>
                        <s:submit value="%{getText('login')}" theme="simple"  /> 
                    </td>
				</tr>
			</table>
		</s:form>
		
		<br>
		
		<s:text name="without_account"></s:text><a href="register.jsp"><s:text name="register"></s:text></a>
		
	</center>
</body>
</html>