package com.liuhao.servletdemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InputServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String info = req.getParameter("info"); // 接收请求参数
		PrintWriter out = resp.getWriter(); // 准备输出
		out.println("<html>"); // 输出html元素
								// out.println("<head><title>MLDNJAVA</title></head>");
								// // 输出html元素
		out.println("<body>"); // 输出html元素
		out.println("<h1>" + info + "</h1>"); // 输出html元素
		out.println("</body>"); // 输出html元素
		out.println("</html>"); // 输出html元素
		out.close(); // 关闭输出

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		this.doGet(req, resp);

	}
}
