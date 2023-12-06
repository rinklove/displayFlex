package displayFlex.ticketing.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TicketMovieImageController
 */
@WebServlet("/ticket/select/image")
public class TicketMovieImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String movieNo = req.getParameter("영화이름");
		System.out.println("movieNo = " + movieNo);
		PrintWriter out = resp.getWriter();
		out.write(movieNo);
//		req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketSelect.jsp").forward(req, resp);
	}



}
