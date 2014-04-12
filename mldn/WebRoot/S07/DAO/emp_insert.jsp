<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<%request.setCharacterEncoding("utf-8"); %>
	<form action="emp_insert_do.jsp" method="post">
		雇员编号：<input type="text" name="empno"><br>
		雇员姓名：<input type="text" name="ename"><br>
		雇员职位：<input type="text" name="job"><br>
		入职日期：<input type="text" name="hiredate"><br>
		基本工资：<input type="text" name="sal"><br>
		<input type="submit" value="提交"><input type="reset" value="重置">
	</form>
	</center>

</body>
</html>