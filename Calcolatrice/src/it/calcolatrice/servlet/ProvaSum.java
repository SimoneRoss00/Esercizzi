package it.calcolatrice.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProvaSum
 */
@WebServlet("/ProvaSum")
public class ProvaSum extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProvaSum() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		int firstnumber = Integer.parseInt(request.getParameter("fn"));
		int secondnumber = Integer.parseInt(request.getParameter("sn"));
		int tot = firstnumber + secondnumber;
		request.setAttribute("result", tot);
		request.getRequestDispatcher("pages/index.jsp").forward(request, response);

	}

}
