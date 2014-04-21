package com.liuhao.servletdemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liuhao.demo.Dept;

public class ELServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Dept dept = new Dept();
		dept.setDeptno(10);
		dept.setDname("技术部");
		dept.setLoc("南京");
		
		request.setAttribute("deptinfo", dept);
		request.getRequestDispatcher("dept_info.jsp").forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
