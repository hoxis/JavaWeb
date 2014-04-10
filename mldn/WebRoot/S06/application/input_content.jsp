<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.util.*"%> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");//解决中文乱码问题
		
		String name = request.getParameter("filename");//接收保存的文件名称
		String content = request.getParameter("filecontent");//接收保存文件的内容
		String fileName = this.getServletContext().getRealPath("/") + "note" + File.separator + name;
		
		File file = new File(fileName);//实例化File类对象
		if(!file.getParentFile().exists()){//判断父文件夹是否存在
			file.getParentFile().mkdir();//创建文件夹			
		}
		
		PrintStream ps = null;//定义打印流对象
		ps = new PrintStream(new FileOutputStream(file));//准备向文件中保存
		ps.println(content);//输出内容
		ps.close();//关闭输出流
		
	 %>
	 
	 <%
	 	Scanner scan = new Scanner(new FileInputStream(file));//使用Scanner读取文件
	 	scan.useDelimiter("\n");//设置读取分隔符
	 	StringBuffer sb = new StringBuffer();//将所有内容都读取出来
	 	while(scan.hasNext()){
	 		sb.append(scan.next()).append("<br>");//读取内容
	 	}
	 	scan.close();
	 	
	  %>
		<%=sb %>
		
</body>
</html>









