<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>import测试-连接数据库</title>
</head>
<body>
	<%!public static final String DRIVER = "com.mysql.jdbc.Driver";
	public static final String URL = "jdbc:mysql://127.0.0.1:3306/ericsson";
	public static final String USER = "root";
	public static final String PASSWORD = "root";%>

	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	%>
	<%
		Class.forName(DRIVER);
		conn = DriverManager.getConnection(URL, USER, PASSWORD);

		String sql = "select id,username,gender from users";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();
	%>

	<center>
		<table border="1">
			<tr>
				<td>id</td>
				<td>姓名</td>
				<td>性别</td>
			</tr>
			<%
				while (rs.next()) {
					int id = rs.getInt(1);
					String username = rs.getString(2);
					String gender = rs.getString(3);
			%>
			<tr>
				<td><%=id%></td>
				<td><%=username%></td>
				<td><%=gender%></td>
			</tr>
			<%
				}
			%>
			<%
				rs.close();
				pstmt.close();
				conn.close();
			 %>
		</table>
	</center>

</body>
</html>









