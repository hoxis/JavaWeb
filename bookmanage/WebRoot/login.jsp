<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="login"></s:text></title>
<script type="text/javascript">   
	function changeValidateCode(obj)
	
	<!------------- this用object接收-------------->
	
	{   
	//获取当前的时间作为参数，无具体意义   
	var timenow = new Date().getTime();
	//每次请求需要一个不同的参数，否则可能会返回同样的验证码   
	//这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。   
	obj.src="rand.action?d="+timenow;   
	}   
</script>    
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
		<s:fielderror cssStyle="color:red"></s:fielderror>
		<s:form action="user_login.action" method="post">
			<table>
				<s:textfield name="user.username" label="%{getText('username')}"></s:textfield>
				<s:password name="user.password" label="%{getText('password')}"> </s:password>
			</table>	
				
				<s:textfield name="rand" size="5" label="验证码"></s:textfield>
				<!----------src用action赋值---------->
				<img src="rand.action"   onclick="changeValidateCode(this)" title="点击图片刷新验证码"/>  
			<table>
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