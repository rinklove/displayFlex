package displayFlex.ticketing.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.ticketing.service.TicketSelectService;
import displayFlex.ticketing.vo.SelectMovieVo;

@WebServlet("/ticket/select")
public class TicketSelectController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		try {
			TicketSelectService tss = new TicketSelectService();
			List<SelectMovieVo> movieList = tss.getMovieList();
			PrintWriter out = resp.getWriter();
			String x = "{\"no\":\"11111111\",\"name\":\"222222222\"}";
			out.write(x);
			
//			req.setAttribute("screenDateList", screenDateList);
			req.setAttribute("movieList", movieList);
			req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketSelect.jsp").forward(req, resp);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}
