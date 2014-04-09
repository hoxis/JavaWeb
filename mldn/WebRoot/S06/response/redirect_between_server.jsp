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
		System.out.println("******forward跳转前******");
	 %>
	 
	 <jsp:forward page="response_index.jsp">
	 	<jsp:param value="forward" name="name"/>
	 </jsp:forward>
	 
	 <%
		System.out.println("******forward跳转后******");
	 %>

</body>
</html>