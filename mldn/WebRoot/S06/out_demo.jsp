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
		//取得缓冲区信息
		int buffer = out.getBufferSize();//得到全部缓冲区的大小
		int available = out.getRemaining();//得到未使用的缓冲区大小
		int inUse = buffer - available;//得到已使用的
	 %>
	 
	 <h3>缓冲区大小：<%=buffer%></h3>
	<h3>可用的缓冲区大小：<%=available%></h3>
	<h3>使用中的缓冲区大小：<%=inUse%></h3>
	 

</body>
</html>