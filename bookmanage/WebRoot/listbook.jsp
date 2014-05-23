<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍列表</title>
<script type="text/javascript">
	function del(){
		if(confirm("确认删除？")){
				return true;
			}
			
			return false;
	}
</script>
</head>
<body>
	<%
		if(session.getAttribute("user") == null){
			session.setAttribute("HasNotLoginMessage", "您尚未登录，请登录");
			response.sendRedirect("/bookmanage/index.jsp");
		}
	 %>

	<center><h1><font color="red">书籍列表</font></h1></center>
	
	<table align="center" border="1">
		<tr>
			<th>图书编号</th>
			<th>书名</th>
			<th>作者</th>
			<th>出版时间</th>
			<th>图书价格</th>
			<th>修改书籍信息</th>
			<th>删除书籍</th>
		</tr>
		
		<s:iterator value="#request.booklist" var="book">
			<tr>
				<td align="center"><s:property value="#book.bookid"/></td>
				<td><s:property value="#book.bookname"/></td>
				<td><s:property value="#book.author"/></td>
				<td align="right"><s:property value="#book.presstime"/></td>
				<td align="center"><s:property value="#book.price"/></td>
				<td align="center"><s:a href="updatePBook.action?book.bookid=%{#book.bookid}">修改</s:a></td>
				<td align="center"><s:a href="deleteBook.action?book.bookid=%{#book.bookid}" onclick="return del()">删除</s:a></td>
			</tr>
		</s:iterator>
		
	</table>
	
	<table align="center">
		<tr>
			<td colspan="7"><s:a href="addbook.jsp">添加图书</s:a></td>
			<td colspan="7" align="right">
			<s:a href="welcome.jsp">返回</s:a>
		</td>
		</tr>	
	</table>
	

</body>
</html>