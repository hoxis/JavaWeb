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
		long start = session.getCreationTime();//获取创建时间
		long end = session.getLastAccessedTime();//获取最后一次操作的时间
		long stayTime = (end - start) / 1000; //得出操作的秒数
	 %>
	 
	 <h3>您已停留<%=stayTime %>秒。</h3>

</body>
</html>