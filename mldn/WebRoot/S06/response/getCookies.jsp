<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		//取得全部设置的Cookie对象
		Cookie[] cookie = request.getCookies();
		for(int i=0; i<cookie.length; i++){
	%>
			<h3><%=cookie[i].getName() %> --> <%=cookie[i].getValue() %></h3>		
		
	<%
		}
	 %>

</body>
</html>