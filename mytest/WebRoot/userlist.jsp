<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function del(){
		if(confirm("确认删除？")){
			return true;
		}
		
		return false;
	}
</script>

</head>
<body>
	<center><h1><font color="red">用户列表</font></h1></center>
	
	<table border="1" width="80%" align="center">
		<tr>
			<th>序号</th>
			<th>姓</th>
			<th>名</th>
			<th>年龄</th>
			<th>删除</th>
			<th>更新</th>
		</tr>
		
		<s:iterator value="#request.list" id="userlist">
			<tr>
				<td><s:property value="#userlist.id"/></td>
				<td><s:property value="#userlist.firstname"/></td>
				<td><s:property value="#userlist.lastname"/></td>
				<td><s:property value="#userlist.age"/></td>
				<td><s:a href="deleteUser.action?user.id=%{#userlist.id}" onclick="return del()">删除</s:a></td>
				<td><s:a href="updatePUser.action?user.id=%{#userlist.id}">更新</s:a></td>
			</tr>
		</s:iterator>
	</table>
	
</body>
</html>