package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckNumServlet extends HttpServlet {

	private int sumRound = 1;
	private int num; // 存放后台产生的随机数
	private int sum;// 存放用户猜的次数

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		num = (Integer) request.getSession().getAttribute("num");

		// 存放用户输入的数字
		double inputnum = Double.parseDouble(request.getParameter("inputnum"));

		if (request.getSession().getAttribute("sum") != null) {
			// 将用户的猜数字次数加1，并重新写到session中
			sum = (Integer) request.getSession().getAttribute("sum");
		} else {
			sum = 0;
		}
		sum++;
		request.getSession().setAttribute("sum", sum);

		// 存放提示信息
		String msg = "";
		if (inputnum > num) {
			msg = "偏大了";

		} else if (inputnum < num) {
			msg = "偏小了";
		} else {
			request.getServletContext().setAttribute("sumRound", ++sumRound);
			response.sendRedirect("success.jsp");
			return;
		}

		request.getSession().setAttribute("msg", msg);

		response.sendRedirect("guess.jsp");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
