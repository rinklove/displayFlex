package displayFlex.ticketing.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.ticketing.service.TicketSelectService;
import displayFlex.ticketing.vo.ScreeningDateVo;

@WebServlet("/ticket/select/timeList")
public class ScreeningTimeListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String movieNo = req.getParameter("movieNo");
		TicketSelectService tss = new TicketSelectService();
		List<ScreeningDateVo> timeList = tss.getScreeningTimeList(movieNo);
		
		
	}
	
}
