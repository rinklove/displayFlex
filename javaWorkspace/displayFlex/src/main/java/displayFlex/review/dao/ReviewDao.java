package displayFlex.review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import displayFlex.review.dto.ReviewDto;
import displayFlex.review.vo.ReviewVo;
import test.JDBCTemplate;

public class ReviewDao {
	private String query;
	
	/**
	 * 특정 영화에 대한 리뷰 가져오기
	 * @param movieNo
	 * @param con
	 * @return
	 * @throws SQLException 
	 */
	public Map<Integer, ReviewDto> getReviewListByMovieNo(String movieNo, Connection con) throws SQLException {
		query = "SELECT R.REVIEW_NO, M.MEMBER_NICK, R.CONTENT, TO_CHAR(R.WRITE_DATE, 'YYYY-MM-DD HH24:MI') WRITE_DATE, R.RATE FROM REVIEW R INNER JOIN MEMBER M ON R.MEMBER_NO = M.MEMBER_NO WHERE R.MOVIE_NO = ? AND R.DEL_YN = 'N'";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, movieNo);
		ResultSet rs = pstmt.executeQuery();
		Map<Integer, ReviewDto> reviewList = new HashMap();
		
		int index=0;
		while(rs.next()) {
			index++;
			String reviewNo = rs.getString("REVIEW_NO");
			String memberNick = rs.getString("MEMBER_NICK");
			String content = rs.getString("CONTENT");
			String writeDate = rs.getString("WRITE_DATE");
			String rate = rs.getString("RATE");
			
			reviewList.put(index, new ReviewDto(reviewNo, memberNick, content, writeDate, rate));
		}
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		return reviewList;
	}

	/**
	 * 
	 * @param review
	 * @param con
	 * @return
	 * @throws SQLException 
	 */
	public int addRiew(ReviewVo review, Connection con) throws SQLException {
		query = "INSERT INTO REVIEW(REVIEW_NO, MEMBER_NO, MOVIE_NO, CONTENT, RATE) VALUES (SEQ_REVIEW.NEXTVAL, ?, ?, ?, ?)";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, review.getMemberNo());
		pstmt.setString(2, review.getMovieNo());
		pstmt.setString(3, review.getContent());
		pstmt.setString(4, review.getRate());
		
		int result = pstmt.executeUpdate();
		JDBCTemplate.close(pstmt);
		return result;
	}
}
