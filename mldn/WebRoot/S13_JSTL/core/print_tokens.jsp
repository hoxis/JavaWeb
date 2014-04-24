<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String str = "www.nupt.edu.cn";
		pageContext.setAttribute("str", str);
	 %>
	 
	 <h3>字符串"www.nupt.edu.cn"拆分的结果(从第2个开始输出)：<br>
	 	<c:forTokens items="${str }" delims="." var="con" begin="1">
	 		${con }&nbsp;
	 	</c:forTokens>
	 </h3>
	 
	 <h3>字符串"cjaadsfiadfoijqwdla"用'a'拆分的结果：<br>
	 	<c:forTokens items="cjaadsfiadfoijqwdla" delims="a" var="con">
	 		${con }&nbsp;
	 	</c:forTokens>
	 </h3>
</body>
</html>