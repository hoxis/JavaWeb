<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试page</title>
</head>
<body>

	<%
		pageContext.setAttribute("name", "liuhao");
		pageContext.setAttribute("date",new Date());
	 %>
	 
	 <%
	 	//取得设置的属性
	 	String name = (String)pageContext.getAttribute("name");
	 	Date date = (Date)pageContext.getAttribute("date");
	  %>
	  
	  <h2>姓名：<%=name %></h2>
	  <h2>日期：<%=date %></h2>

</body>
</html>