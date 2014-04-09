<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		Enumeration enumNames = request.getParameterNames();
	 %>
	 
	 <%
		while(enumNames.hasMoreElements()){
			String paraName = (String)enumNames.nextElement();	 
	  %>
	  		<h2>
		  		<%=paraName %>
		  		-->
	  		<%
	  			if(paraName.startsWith("**")){//先判断是否是以标注“**”开头的
	  				String[] temp = request.getParameterValues(paraName);
	  				for(int i=0;i<temp.length;i++){
			%>
	  					<%=temp[i] %>
	  				<%
	  				
	  				}
	  				%>
	  		<%
	  			}else{
	  		 %>
		  		<%=request.getParameter(paraName) %>
		  	<%
		  	}
		  	 %>
	  		</h2>
	  <%
	  	}
	   %>

</body>
</html>