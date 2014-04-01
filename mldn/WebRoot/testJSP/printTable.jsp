<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>打印表格</title>

</head>
<body>
	<%
		int rows = 0;
		int cols = 0;
		try{
		rows = Integer.parseInt(request.getParameter("rows"));
		cols = Integer.parseInt(request.getParameter("cols"));
		}catch (Exception e){}
	%>

	<center>
		<table border="1">
			<%
				for (int i = 0; i < rows; i++) {
			%>
			<tr>
				<%
					for (int j = 0; j < cols; j++) {
				%>
				<td><%=i*j %></td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>
		</table>
	</center>

</body>
</html>