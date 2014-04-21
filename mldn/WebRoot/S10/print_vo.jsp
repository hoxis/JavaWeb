<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.liuhao.demo.Dept" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Dept dept = new Dept();
		dept.setDeptno(10);
		dept.setDname("技术部");
		dept.setLoc("南京");
		
		request.setAttribute("deptinfo", dept);
	 %>
	 
	 <h3>部门编号：${deptinfo.deptno }</h3>
	 <h3>部门名称：${deptinfo.dname }</h3>
	 <h3>部门地点：${deptinfo.loc }</h3>

</body>
</html>