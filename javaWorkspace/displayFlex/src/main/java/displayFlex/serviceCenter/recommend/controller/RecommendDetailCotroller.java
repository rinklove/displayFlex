package displayFlex.serviceCenter.recommend.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.serviceCenter.inquiry.service.InquiryService;
import displayFlex.serviceCenter.inquiry.vo.InquiryVo;
import displayFlex.serviceCenter.recommend.service.RecommendService;
import displayFlex.serviceCenter.recommend.vo.RecommendVo;

@WebServlet("/serviceCenter/recommendDetail")
public class RecommendDetailCotroller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			// data
			String recommendMvNo = req.getParameter("recommendMvNo");
			
			// service
			RecommendService rs = new RecommendService();
			RecommendVo vo = rs.selectRecommendByNo(recommendMvNo);
			
//			System.out.println(vo);
//			if(vo != null) {
				// result == view
				req.setAttribute("vo", vo);
				req.setAttribute("currPage", req.getParameter("currPage"));
				req.getRequestDispatcher("/WEB-INF/views/serviceCenter/recommend/recommendDetail.jsp").forward(req, resp);
//			} else {
//				 req.setAttribute("errorMsg", "존재하지 않는 상영요청 게시글입니다.");
//		         req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
//			}
			
		}catch(Exception e) {
			System.out.println("[ERROR-B004] 상영요청 상세조회 중 에러 발생 ...");
			e.printStackTrace();
			req.setAttribute("errorMsg", "상영요청 상세조회 실패...");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
		
	}

}
