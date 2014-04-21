<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List deptList = (List)request.getAttribute("deptList");
		if(deptList != null){
		%>
		
			<table border="1">
				<tr>
					<td>部门编号</td>
					<td>部门名称</td>
					<td>部门位置</td>
				</tr>
				
				<%
				
				Iterator iter = deptList.iterator();
				while(iter.hasNext()){
					pageContext.setAttribute("dept", iter.next());
					
					%>
					
					<tr>
						<td>${dept.deptno }</td>
						<td>${dept.dname }</td>
						<td>${dept.loc }</td>
					</tr>
					
					<%
					
				}
				
				 %>
				
			</table>
		
		<%
		}
	 %>

</body>
</html>