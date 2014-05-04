<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保存用户</title>
</head>
<body>

	<h2>
		<font color="red">保存用户</font>
	</h2>
	
	<!-- 
	<table  width="40%">
		<tr>
			<td>
				<s:fielderror cssStyle="color:red" ></s:fielderror>
			</td>
		</tr>
	</table>
	 -->
	
	<s:form action="saveUser">
		<s:textfield name="user.firstname" label="%{getText('firstname')}"></s:textfield>
		<s:textfield name="user.lastname" label="%{getText('lastname')}"></s:textfield>
		<s:textfield name="user.age" label="%{getText('age')}"></s:textfield>
		<s:submit value="提交"></s:submit>
	</s:form>
	
	<s:debug></s:debug>

</body>
</html>