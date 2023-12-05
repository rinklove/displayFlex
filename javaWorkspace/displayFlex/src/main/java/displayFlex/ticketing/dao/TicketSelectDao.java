package displayFlex.ticketing.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import displayFlex.ticketing.vo.SelectMovieVo;
import test.JDBCTemplate;

public class TicketSelectDao {

	public List<SelectMovieVo> getMovieList(Connection conn) throws Exception {
		
		String sql ="SELECT MOVIE_NO, MOVIE_NAME, MOVIE_IMAGE, SCREEN_GRADE_NO FROM MOVIE ORDER BY MOVIE_NO";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		List<SelectMovieVo> movieList = new ArrayList<SelectMovieVo>();
		
		while(rs.next()) {
			SelectMovieVo vo = new SelectMovieVo();
			vo.setMovieNo(rs.getString("MOVIE_NO"));
			vo.setMovieName(rs.getString("MOVIE_NAME"));
			vo.setMovieImage(rs.getString("MOVIE_IMAGE"));
			vo.setScreenGradeNo(rs.getString("SCREEN_GRADE_NO"));
			
			movieList.add(vo);
		}
		
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return movieList;
	}

}
