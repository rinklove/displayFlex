package displayFlex.review.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import displayFlex.review.dao.ReviewDao;
import displayFlex.review.dto.ReviewDto;
import displayFlex.review.vo.ReviewVo;
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
	public Map<Integer, ReviewDto> getReviewListByMovieNo(String movieNo) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		Map<Integer, ReviewDto> reviewList = reviewDao.getReviewListByMovieNo(movieNo ,con);
		JDBCTemplate.close(con);
		return reviewList;
	}
	
	/**
	 * 리뷰 등록
	 * @param review
	 * @return
	 * @throws SQLException
	 */
	public int addReview(ReviewVo review) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		int result = reviewDao.addRiew(review, con);
		
		if(result == 1) JDBCTemplate.commit(con);
		else JDBCTemplate.rollback(con);
		
		JDBCTemplate.close(con);
		return result;
	}
}
