<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String ip = request.getRemoteAddr();//取得客户端的ip地址
	 %>
	 <h2>ip --> <%=ip %></h2>

	<%
		Enumeration enumHeader = request.getHeaderNames();			//取得全部头信息
		while(enumHeader.hasMoreElements()){						//依次取出头信息
			String headerName = (String)enumHeader.nextElement();	
			String headerValue = request.getHeader(headerName);		//依次取出头信息内容
	%>
			<h4><%=headerName %>  -->  <%=headerValue %></h4>
		<%
		}
	 %>

</body>
</html>