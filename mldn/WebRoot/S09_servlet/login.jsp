<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script type="text/javascript">
	function validate(f){
		if(!(/^\w{5,15}$/.test(f.userid.value))){
			alert("用户id必须是5—15位");
			f.userid.focus();
			return false;
		}
		if(!(/^\w{5,15}$/.test(f.password.value))){
			alert("密码必须是5—15位");
			f.password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<h2>用户登录</h2>
	<%request.setCharacterEncoding("utf-8"); %>
	
	<%
		List<String> info = (List<String>)request.getAttribute("info");
		if(info != null){
			Iterator iter = info.iterator();
			while(iter.hasNext()){
			%>
				<h4><%=iter.next() %></h4>
			<%
			}
		}
	 %>
	 
	 <form action="LoginServlet" method="post" onsubmit="return validate(this)">
	 	用户ID：<input type="text" name="userid"><br>
	 	密码：<input type="password" name="password"><br>
	 	<input type="submit" value="登录">
	 	<input type="reset" value="重置">
	 </form>

</body>
</html>