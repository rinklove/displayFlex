package displayFlex.review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import displayFlex.review.dto.ReviewDto;
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
	public Map<String, ReviewDto> getReviewListByMovieNo(String movieNo, Connection con) throws SQLException {
		query = "SELECT R.REVIEW_NO, M.MEMBER_NICK, R.CONTENT, TO_CHAR(R.WRITE_DATE, 'YYYY-MM-DD HH24:MI') WRITE_DATE, R.RATE FROM REVIEW R INNER JOIN MEMBER M ON R.MEMBER_NO = M.MEMBER_NO WHERE R.MOVIE_NO = ? AND R.DEL_YN = 'N'";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, movieNo);
		ResultSet rs = pstmt.executeQuery();
		Map<String, ReviewDto> reviewList = new HashMap();
		
		while(rs.next()) {
			String reviewNo = rs.getString("REVIEW_NO");
			String memberNick = rs.getString("MEMBER_NICK");
			String content = rs.getString("CONTENT");
			String writeDate = rs.getString("WRITE_DATE");
			String rate = rs.getString("RATE");
			
			reviewList.put(reviewNo, new ReviewDto(reviewNo, memberNick, content, writeDate, rate));
		}
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		return reviewList;
	}
}
