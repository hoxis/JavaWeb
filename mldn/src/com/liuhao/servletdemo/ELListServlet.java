package com.liuhao.servletdemo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liuhao.demo.Dept;

public class ELListServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Dept> deptList = new ArrayList<Dept>();
		Dept dept = null;
		
		dept = new Dept();
		dept.setDeptno(10);
		dept.setDname("技术部");
		dept.setLoc("南京");
		deptList.add(dept);
		
		dept = new Dept();
		dept.setDeptno(20);
		dept.setDname("测试部");
		dept.setLoc("北京");
		deptList.add(dept);
		
		request.setAttribute("deptList", deptList);
		request.getRequestDispatcher("dept_list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
