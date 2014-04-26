package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewGameServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 重新生成随机数
		int num = new Random().nextInt(100) + 1;
		request.getSession().setAttribute("num", num);

		// 总局数加1
		if (request.getServletContext().getAttribute("sumRound") != null) {
			int sumRound = (Integer) request.getServletContext().getAttribute(
					"sumRound");
			request.getServletContext().setAttribute("sumRound", ++sumRound);
		} else {
			int sumRound = 1;
			request.getServletContext().setAttribute("sumRound", ++sumRound);
		}

		// 猜的次数清零
		request.getSession().setAttribute("sum", 0);

		// session中保存的inputnum清零
		request.getSession().setAttribute("inputnum", null);

		// 提示信息清空
		request.getSession().setAttribute("msg", "");

		response.sendRedirect("guess.jsp");
	}

}
