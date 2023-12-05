package displayFlex.review.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map.Entry;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import displayFlex.member.MemberVo;
import displayFlex.review.dto.ReviewDto;
import displayFlex.review.service.ReviewService;
import displayFlex.util.page.vo.PageVo;


@WebServlet("/movie/review/list")
public class ReviewListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private final ReviewService reviewService;
	
    public ReviewListController() {
        super();
        reviewService = new ReviewService();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.service(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		try {
			int pno = Integer.parseInt(request.getParameter("pno"));
			String movieNo = request.getParameter("movieNo");
			MemberVo loginMember = (MemberVo) request.getSession().getAttribute("loginMember");
			
			int reviewCount = reviewService.getAllReviewCount(pno);
			PageVo pageable = setPage(reviewCount, pno, 5, 10);
			//리뷰 가져오기
			List<ReviewDto> reviewList = reviewService.getReviewListByMovieNo(movieNo, pageable, loginMember);
				
			out.write(reviewList.toString());
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	private PageVo setPage(int listCount, int currentPage, int pageLimit, int boardLimit) {
		return new PageVo(listCount, currentPage, pageLimit, boardLimit);
	}
}
