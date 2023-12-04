package displayFlex.serviceCenter.faq.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import displayFlex.serviceCenter.faq.service.FaqService;
import displayFlex.serviceCenter.faq.vo.FaqVo;

@WebServlet("/serviceCenter/faqList")
public class FaqListController extends HttpServlet {
	
	//faq 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		try {
//			
//			HttpSession session = req.getSession();
//			
//			// data
//			String category = req.getParameter("category");
//			String title = req.getParameter("title");
//			String content = req.getParameter("content");
//			
//			FaqVo vo = new FaqVo();
//			vo.setCategoryNo(category);
//			vo.setTitle(title);
//			vo.setContent(content);
//			
//			// service
//			FaqService fs = new FaqService();
//			List<FaqVo> faqVoList = fs.selectFaqList();
//			
//			// result (==view)
//			req.setAttribute("x", faqVoList);
//			
//		} catch (Exception e) {
//			System.out.println("[ERROR-B001] faq 목록 조회 중 에러 발생");
//			e.printStackTrace();
//			req.setAttribute("errorMsg", "게시글 목록 조회 에러");
//			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
//		}
		req.getRequestDispatcher("/WEB-INF/views/serviceCenter/faq/faqList.jsp").forward(req, resp);
	}

	//faq 로직
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
