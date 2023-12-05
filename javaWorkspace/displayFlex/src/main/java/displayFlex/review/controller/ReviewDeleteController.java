package displayFlex.review.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.member.MemberVo;
import displayFlex.review.service.ReviewService;
import displayFlex.review.vo.ReviewVo;

/**
 * Servlet implementation class ReviewDeleteController
 */
@WebServlet("/movie/review/delete")
public class ReviewDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final ReviewService reviewService;
       
    public ReviewDeleteController() {
        super();
        reviewService = new ReviewService();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.service(request, response);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String reviewNo = request.getParameter("reviewNo");
			MemberVo loginMember = (MemberVo)request.getSession().getAttribute("loginMember");
			ReviewVo findReview = reviewService.findWriterByNo(reviewNo);
			
			if(loginMember == null || (loginMember.getAdminYn().equals("N") && !loginMember.getMemberNo().equals(findReview.getMemberNo())) ) {
				throw new Exception("삭제 가능권한이 없습니다.");
			}
			
			int result = reviewService.deleteReview(reviewNo);
			if(result == 1) {
				response.sendRedirect(request.getContextPath()+"/movie/detail?movieNo=" + findReview.getMovieNo());				
			} else {
				throw new Exception();
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", "리뷰 삭제 실패");
			request.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(request, response);
		}
		
		
	}

}
