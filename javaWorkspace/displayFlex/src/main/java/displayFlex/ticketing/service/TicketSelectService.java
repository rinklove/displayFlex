package displayFlex.ticketing.service;

import java.sql.Connection;
import java.util.List;

import displayFlex.ticketing.dao.TicketSelectDao;
import displayFlex.ticketing.vo.SelectMovieVo;
import test.JDBCTemplate;

public class TicketSelectService {

	public List<SelectMovieVo> getMovieList() throws Exception {
		
		Connection conn = JDBCTemplate.getConnection();
		
		TicketSelectDao dao = new TicketSelectDao();
		
		List<SelectMovieVo> movieList = (List<SelectMovieVo>) dao.getMovieList(conn); 
		
		JDBCTemplate.close(conn);
		
		return movieList;
	}

	public String getMovieImageUrl(String movieNo) throws Exception {
		
		Connection conn = JDBCTemplate.getConnection();
		
		TicketSelectDao dao = new TicketSelectDao();
		
		String movieImgUrl = dao.getMovieImageUrl(conn, movieNo);
		
		JDBCTemplate.close(conn);
		
		return movieImgUrl;
	}

//	public List<SelectMovieVo> getScreenDateList() throws Exception {
//		Connection conn = JDBCTemplate.getConnection();
//		
//		TicketSelectDao dao = new TicketSelectDao();
//		
//		List<SelectMovieVo> screenDateList = (List<SelectMovieVo>) dao.getScreenDateList(conn); 
//		
//		JDBCTemplate.close(conn);
//		
//		return screenDateList;
//	}

	
	
}
