<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>第一种Scriptlet：<%%></title>
</head>
<body>

<%--######第一种Scriptlet###### --%>
	<%--
		int sum = 0;	//声明变量
		for (int i = 0; i <= 100; i++) {
			sum += i;
		}
		out.print("<h1>sum= " + sum + "</h1>");
	--%>
	
	<%--!
		public static final String DBDRIVER = "oracle.jdbc.driver.OracleDriver";
		public static final String DBURL = "jdbc:oracle:root:@local:3306:test";
	 --%>
	 <%--
	 	out.print("<h1>DBDRIVER = " + DBDRIVER + "</h1>");
	 	out.print("<h1>DBURL = " + DBURL + "</h1>");
	  --%>
	  
	  
<%--######第二种Scriptlet###### --%>
	  <%--!	//定义方法
	  		public static int add(int a, int b){
	  			return a + b;
	  		}
	   --%>
	   
	   <%--
	   		out.print("10 + 2 = " + add(10,2));
	    --%>

<%--######第三种Scriptlet###### --%>	 
   
	    <%!	//定义方法
	  		public static int add(int a, int b){
	  			return a + b;
	  		}
	  		
	  		public String name = "liuhao";
	   %>
	   
	   <h1><%=add(10, 1) %></h1>
	   <h1><%=name %></h1>
	   <h1><%="哈哈" %></h1>

</body>
</html>















