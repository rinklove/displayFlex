package displayFlex.review.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.review.dto.ReviewDto;
import displayFlex.review.service.ReviewService;


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
		try {
			String movieNo = request.getParameter("movieNo");
			//리뷰 가져오기
			Map<String, ReviewDto> reviewList = reviewService.getReviewListByMovieNo(movieNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
