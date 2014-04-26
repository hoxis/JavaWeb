<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>猜数字</title>
	<script type="text/javascript">
		//验证用户输入
		function validate(input){
			var value = input.inputnum.value;
			if(!(value >0 && value <=100) ){
				alert("输入必须是“1~100之间的数字！”");
				input.inputnum.focus();
				input.inputnum.select();
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<form action="CheckNumServlet" method="post" name="myform" onsubmit="return validate(this)">
		猜数字游戏开始。本游戏共开了<%=getServletContext().getAttribute("sumRound")== null ? 1 : getServletContext().getAttribute("sumRound") %>局。
		<br><br>
		请填写1~100之间的数值：<br>
		
		<font color="red">${sessionScope.msg }</font><br>
		
		<input type="text" name="inputnum">
		${sessionScope.inputnum }
		<input type="submit" value="提交">
		你已猜了<%=session.getAttribute("sum") == null ? 0 : session.getAttribute("sum") %>次。
	</form>
	<br>
	<form action="NewGameServlet" method="post">
		<input style="color: blue;" type="submit" value="新游戏">
	</form>
</body>
</html>