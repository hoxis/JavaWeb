<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示中文</title>
</head>
<body>
	<h1>你好，刘浩！</h1>
	<%
		int row = 10;
		int col = 10;
	 %>
	 <table border="1">
	 
	 	<%
	 		for(int i=0;i<row;i++){
	 	 %>
	 	 <tr>
	 	 <%
	 	 	for(int j=0;j<col;j++){
	 	  %>
	 	  <td><%=i * j %></td>
	 	  <%
	 	  }
	 	   %>
	 	   </tr>
	 	   <%} %>
	 </table>
</body>
</html>