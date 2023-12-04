package displayFlex.review.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import displayFlex.review.dao.ReviewDao;
import displayFlex.review.dto.ReviewDto;
import test.JDBCTemplate;

public class ReviewService {

	private final ReviewDao reviewDao;
	
	public ReviewService() {
		reviewDao = new ReviewDao();
	}
	/**
	 * 영화에 대한 리뷰 가져오기 
	 * @param movieNo
	 * @return
	 * @throws SQLException 
	 */
	public Map<String, ReviewDto> getReviewListByMovieNo(String movieNo) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		Map<String, ReviewDto> reviewList = reviewDao.getReviewListByMovieNo(movieNo ,con);
		JDBCTemplate.close(con);
		return reviewList;
	}
}
