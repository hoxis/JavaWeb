<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>动态包含 </title>
</head>
<body>
	<h1>include 动态包含 传递参数</h1>
	<jsp:include page="content.jsp">
		<jsp:param value="Hello" name="ref1" />
		<jsp:param value="hh" name="ref2" />
	</jsp:include>


	<h1>动态包含 传递变量</h1>
	<%!
		public static final String str = "www.baidu.com";
	 %>
	 
	 <jsp:include page="content.jsp">
	 	<jsp:param value="hello" name="ref1"/>
	 	<jsp:param value="<%=str %>" name="ref2"/>
	 </jsp:include>
	 
	 <h1>两种包含的区别</h1>
	 <%
	 	int i = 10;
	  %>
	  <h2>include.jsp中的i值为：<%=i %></h2>
	     <h6>静态包含：编译出错</h6>
	  <%--@include file="content.jsp" --%>
	  动态包含：
	  <jsp:include page="content.jsp"/>
			 
</body>
</html>




