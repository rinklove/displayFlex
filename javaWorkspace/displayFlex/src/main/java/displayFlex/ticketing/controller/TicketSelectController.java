package displayFlex.ticketing.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ticket/select")
public class TicketSelectController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
//		/displayFlex/src/main/webapp/WEB-INF/views/ticketing/ticket-Select.jsp
		req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketSelect.jsp").forward(req, resp);
		
	}
	
}
