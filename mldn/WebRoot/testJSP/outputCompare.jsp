<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>两种输出方式对比</title>
</head>
<body>


	<%--
	//第一种输出方式
		out.print("<table>");
		for(int i=0;i<100;i++){
			out.print("<tr>");
			for(int j=0;j<100;j++){
				out.print("<td>" + i*j + "</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
	 --%>

	<table border="1">

		<%
			for (int i = 0; i < 100; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j < 100; j++) {
			%>
			<td><%=i * j%></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>