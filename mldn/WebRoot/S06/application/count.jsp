<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int load(String path){
			int temp = 0;
			try{
			
				File file = new File(path);
				BufferedReader br = 
					new BufferedReader(new InputStreamReader(new FileInputStream(file)));
				String str = br.readLine();
				
				temp = Integer.parseInt(str);
				
				br.close();
			
			}catch(Exception e){}
			
			return temp;
		}
		
		public synchronized void save(int count, String path){
			try{
				File file = new File(path);
				PrintStream ps = new PrintStream(new FileOutputStream(file));
				
				ps.print(count);
				ps.close();
			
			}catch(Exception e){}
		}
	 %>
	 
	 <%
	 	String path = this.getServletContext().getRealPath("/") + "count.txt";
	 	int count = load(path);
	  %>
	  
	  <%
	  	if(session.isNew()){
	  		save(++count, path);
	  	}
	   %>
	   
	   <h2>您是第<%=count %>位访问者。</h2>

</body>
</html>