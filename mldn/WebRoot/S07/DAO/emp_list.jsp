<%@page import="com.liuhao.factory.DAOFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="com.liuhao.vo.Emp" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% request.setCharacterEncoding("utf-8");%>
<body>
	
	<%
		try{
			String keyWord = request.getParameter("kewWord");
			
			//若输入为空，则返回全部结果集
			if(keyWord == null){
				keyWord = "";
			}
			
			//获取查询结果集
			List<Emp> all = DAOFactory.getIEmpDAOInstance().findAll(keyWord);
			%>
				<center>
					
					<hr>
					<table border="1" width="80%">
						<tr>
							<td>雇员编号</td>
							<td>雇员姓名</td>
							<td>雇员职位</td>
							<td>入职日期</td>
							<td>基本工资</td>
						</tr>
			<%
			
			//对查询结果进行展示
			for(int i=0;i<all.size();i++){
					Emp emp = all.get(i);
				 %>
						 <tr>
						 	<td><%=emp.getEmpno() %></td>
						 	<td><%=emp.getEname() %></td>
						 	<td><%=emp.getJob() %></td>
						 	<td><%=emp.getHiredate() %></td>
						 	<td><%=emp.getSal() %></td>
					 	</tr>
				<%
			}%>
			
					</table>
				</center>
			<%
			
		
		}catch (Exception e){
			e.printStackTrace();
		}
		
	%>

</body>
</html>