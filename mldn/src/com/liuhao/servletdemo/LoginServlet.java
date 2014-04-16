package com.liuhao.servletdemo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liuhao.factory.DAOFactory;
import com.liuhao.vo.User;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "login.jsp";
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		
		List<String> info = new ArrayList<String>();
		
		if(userid == null || "".equals(userid)){
			info.add("用户id不能为空！");
		}
		if(password == null || "".equals(password)){
			info.add("密码不能为空！");
		}
		
		if(info.size() == 0){
			User user = new User();
			user.setPassword(password);
			user.setUserid(userid);
			
			try {
				if(DAOFactory.getIUserDAOInstance().findLogin(user)){
					info.add("登录成功，欢迎" + user.getName() + "光临");
				}
				else{
					info.add("用户登录失败，id或密码错误");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		req.setAttribute("info", info);
		req.getRequestDispatcher(path).forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
	
}
