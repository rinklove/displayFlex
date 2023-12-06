package displayFlex.serviceCenter.faq.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import displayFlex.member.MemberVo;
import displayFlex.serviceCenter.faq.service.FaqService;
import displayFlex.serviceCenter.faq.vo.FaqVo;
import displayFlex.util.page.vo.PageVo;

@WebServlet("/serviceCenter/faqList")
public class FaqListController extends HttpServlet {
	
	//faq 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			
			FaqService fs = new FaqService();
			
			// data
			String categoryNo = req.getParameter("categoryNo");
			int listCount;
			List<FaqVo> faqVoList;
			
			if(categoryNo != null) {
				listCount = fs.selectFaqCountByCategory(categoryNo);
				faqVoList = fs.selectFaqListByCategory(categoryNo);
			} else {
				listCount = fs.selectFaqCount();				//전체 게시글 갯수
				String currentPage_ = req.getParameter("pno");
				if(currentPage_ == null) {
					currentPage_ = "1";
				}
				int currentPage = Integer.parseInt(currentPage_);	//현재 페이지
				int pageLimit = 2;									//페이징 영역 페이지갯수
				int faqLimit = 6;									//한 페이지에 보여줄 게시글 갯수
				PageVo pvo = new PageVo(listCount, currentPage, pageLimit, faqLimit);
				faqVoList = fs.selectFaqList(pvo);
				req.setAttribute("pvo", pvo);
			}
			
			
			// service
//			List<FaqVo> faqVoList = fs.selectFaqList(pvo);
			
			// result (==view)
			
			req.setAttribute("faqVoList", faqVoList);
//			req.setAttribute("pvo" , pvo);
			req.getRequestDispatcher("/WEB-INF/views/serviceCenter/faq/faqList.jsp").forward(req, resp);
			
		}catch(Exception e) {
			System.out.println("[ERROR-B001]게시글 목록 조회 중 에러 발생 ...");
			e.printStackTrace();
			req.setAttribute("errorMsg", "FAQ 목록 조회 에러");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
	}

	//faq 로직
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
