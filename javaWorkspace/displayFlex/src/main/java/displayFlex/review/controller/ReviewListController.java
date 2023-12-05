package displayFlex.review.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

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
		PrintWriter out = response.getWriter();
		response.setContentType("utf-8");
		try {
			String movieNo = request.getParameter("movieNo");
			//리뷰 가져오기
			Map<Integer, ReviewDto> reviewList = reviewService.getReviewListByMovieNo(movieNo);

			out.write(JSONObject.toJSONString(reviewList));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.write("리뷰 가져오기 실패");
			e.printStackTrace();
		}
	}

}
