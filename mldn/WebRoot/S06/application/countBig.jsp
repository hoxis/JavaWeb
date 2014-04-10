<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.math.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		//定义全局变量
		BigInteger count = null;
	 %>
	 
	 <%!
	 	public BigInteger load(File file){//读取计数文件
	 		BigInteger count = null;//接收读取的数据
	 		try{
	 			if(file.exists()){
	 				//从文件中读取
	 				BufferedReader br = 
	 					new BufferedReader(new InputStreamReader(new FileInputStream(file)));
 					count = new BigInteger(br.readLine());//将文件的内容放到BigInteger类中
		 			br.close();
	 			}
	 			else{//文件不存在则创建新的
	 				count = new BigInteger("0");//第一次访问
	 				save(file, count);//调用sava()方法，保存新的文件
	 			}
	 		
	 		}catch(Exception e){
	 			e.printStackTrace();
	 		}
	 		
	 		return count;
	 	}
	 	
	 	public void save(File file, BigInteger count){//保存技术文件
	 		try{
	 			PrintStream ps = new PrintStream(file);//
	 			ps.println(count);//保存数据
	 			ps.close();
	 		}catch(Exception e){
	 			e.printStackTrace();
	 		}
	 	}
	  %>
	  
	  <%
	  	String fileName = this.getServletContext().getRealPath("/")+"count.txt";//文件路径
	  	File file = new File(fileName);//定义File类对象
	  	
	  	if(session.isNew()){//如果是新的session，表示允许进行增加操作
	  		synchronized(this){//必须进行同步
	  			count = load(file);
	  			count = count.add(new BigInteger("1"));//自增操作
	  			save(file, count);//保存修改后的数据
	  		}
	  	}
	   %>
	  
	  <h2>您是第<%= count %>位访客。</h2>


</body>
</html>