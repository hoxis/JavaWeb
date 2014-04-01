<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录验证</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
	<%!public static final String DRIVER = "com.mysql.jdbc.Driver";
	public static final String URL = "jdbc:mysql://127.0.0.1:3306/mldn";
	public static final String USER = "root";
	public static final String PASSWORD = "root";%>

	<%
		Connection conn = null; //声明数据库连接对象
		PreparedStatement pstmt = null; //声明数据库操作
		ResultSet rs = null; //声明数据库结果集
		boolean flag = false; //定义标志位
		String sql = ""; //声明数据查询语句
		String username = ""; //接收用户的真实姓名
	%>

	<%
		//JDBC操作会抛出异常，使用try...catch处理
		try {
			Class.forName(DRIVER);//加载驱动程序
			conn = DriverManager.getConnection(URL, USER, PASSWORD);//取得数据库连接

			//编写要使用的SQL语句，验证用户id和密码，如果正确则取出用户姓名
			sql = "select name from user where userid=? and password=?";
			pstmt = conn.prepareStatement(sql);//实例化数据库操作
			pstmt.setString(1, request.getParameter("id"));//设置查询所需要的内容
			pstmt.setString(2, request.getParameter("password"));

			rs = pstmt.executeQuery();//执行查询，将查询结果集放到rs中

			if (rs.next()) {
				username = rs.getString(1);
				flag = true;
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
			}
		}
	%>

	<%
		if (flag) {
	%>
	<jsp:forward page="login_success.jsp">
		<jsp:param value="<%=username %>" name="username" />
	</jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="login_failure.jsp"></jsp:forward>
	<%
		}
	%>

</body>
</html>