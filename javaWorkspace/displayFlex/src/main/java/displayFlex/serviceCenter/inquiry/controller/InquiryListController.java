package displayFlex.serviceCenter.inquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/serviceCenter/inquiryList")
public class InquiryListController extends HttpServlet {
	
	//1:1 문의 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/serviceCenter/inquiry/inquiryList.jsp").forward(req, resp);
	}
	
	//1:1 문의 로직
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/serviceCenter/inquiry/AdminInquiryList.jsp").forward(req, resp);
		
	}

}
