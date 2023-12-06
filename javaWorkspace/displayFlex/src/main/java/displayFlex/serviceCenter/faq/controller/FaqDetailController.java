package displayFlex.serviceCenter.faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.serviceCenter.faq.service.FaqService;
import displayFlex.serviceCenter.faq.vo.FaqVo;

@WebServlet("/serviceCenter/faqDetail")
public class FaqDetailController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
					
			// data
			String faqNo = req.getParameter("faqNo");
			
			// service
			FaqService fs = new FaqService();
			FaqVo vo = fs.selectFaqByNo(faqNo);
			
			if(vo != null) {
				// result == view
	            req.setAttribute("vo", vo);
	            req.setAttribute("currPage", req.getParameter("currPage"));
	            req.getRequestDispatcher("/WEB-INF/views/serviceCenter/faq/faqDetail.jsp").forward(req, resp);
	        } else {
	            // FAQ가 존재하지 않는 경우 처리
	            req.setAttribute("errorMsg", "존재하지 않는 FAQ입니다.");
	            req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
			}
			
//			// result == view
//			req.setAttribute("vo", vo);
//			req.setAttribute("currPage", req.getParameter("currPage"));
//			req.getRequestDispatcher("/WEB-INF/views/serviceCenter/faq/faqDetail.jsp").forward(req, resp);
			
		} catch(Exception e) {
			System.out.println("[ERROR-B003] FAQ 상세조회 중 에러 발생");
			e.printStackTrace();
			req.setAttribute("errorMsg", "FAQ 상세조회 실패...");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
	}
	
}
