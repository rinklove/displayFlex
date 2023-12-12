package displayFlex.serviceCenter.faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.member.MemberVo;
import displayFlex.serviceCenter.faq.service.FaqService;
import displayFlex.serviceCenter.notice.service.NoticeService;

@WebServlet("/admin/faqDelete")
public class FaqDeleteController extends HttpServlet {
	
	//faq 삭제 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			// data
			String faqNo = req.getParameter("faqNo");
			
			MemberVo loginMember = (MemberVo) req.getSession().getAttribute("loginMember");
			if(loginMember == null) {
				throw new Exception("잘못된 접근입니다. (로그인 안하고 삭제 ㄴㄴ)");
			}
			String memberNo = loginMember.getMemberNo();
			
			// service
			FaqService fs = new FaqService();
			int result = fs.delete(faqNo, memberNo);
			
			// result == view
			if(result != 1) {
				throw new Exception("faq 삭제 중 에러 발생 ...");
			}
			
			// 게시글 삭제 성공 => 게시글 목록으로 이동
			req.getSession().setAttribute("alertMsg", "faq 삭제 성공!");
			resp.sendRedirect("/cinema/serviceCenter/faqList");
			
		}catch(Exception e) {
			System.out.println("[ERROR-B004] faq 삭제 중 에러 발생 ...");
			e.printStackTrace();
			req.setAttribute("errorMsg", "faq 삭제 중 에러 발생 ...");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}

	
	}

}
