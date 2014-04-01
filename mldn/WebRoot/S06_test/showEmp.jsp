<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司信息</title>
</head>
<body>
	<%!private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/mldn";
	private static final String USER = "root";
	private static final String PASSWORD = "root";%>

	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	%>
	<center>
		<h2>员工信息表</h2>
		<hr>
		<table border="1">
			<tr style="color: blue">
				<td>编号</td>
				<td>姓名</td>
				<td>岗位</td>
				<td>入职日期</td>
				<td>工资</td>
				<td>奖金</td>
			</tr>
			<%
				try {

					Class.forName(DRIVER);
					conn = DriverManager.getConnection(URL, USER, PASSWORD);

					String sql = "select * from emp order by empno";
					pstmt = conn.prepareStatement(
							sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
					pstmt.setMaxRows(5);
					rs = pstmt.executeQuery();
					rs.absolute(1);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getDate(4)%></td>
				<td><%=rs.getFloat(5)%></td>
				<td><%=rs.getFloat(6)%></td>
			</tr>

			<%
				}
				

				} catch (Exception e) {
					System.out.println(e);
				} finally {
					try {
						rs.close();
						pstmt.close();
						conn.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			%>
		</table>
		首页   上一页   下一页   尾页
	</center>


</body>
</html>