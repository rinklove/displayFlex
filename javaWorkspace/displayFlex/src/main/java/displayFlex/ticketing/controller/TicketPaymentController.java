package displayFlex.ticketing.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.ticketing.service.TicketSelectService;

@WebServlet("/ticket/payment")
public class TicketPaymentController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
//		List movieList = tss.printMovieList();
		
		req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketPayment.jsp").forward(req, resp);
	}
	
	
	
}
