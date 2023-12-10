package displayFlex.ticketing.service;

import java.sql.Connection;
import java.util.List;

import displayFlex.ticketing.dao.TicketSelectDao;
import displayFlex.ticketing.vo.ScreeningDateVo;
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

	public List<ScreeningDateVo> getScreeningList(String movieNo) throws Exception {
		Connection conn = JDBCTemplate.getConnection();
		
		TicketSelectDao dao = new TicketSelectDao();
		
		List<ScreeningDateVo> screeningList = (List<ScreeningDateVo>) dao.getScreeningList(conn, movieNo); 
		
		JDBCTemplate.close(conn);
		
		return screeningList;
	}

	public List<ScreeningDateVo> getScreeningTimeList(String movieNo) throws Exception {
		
		Connection conn = JDBCTemplate.getConnection();
		
		TicketSelectDao dao = new TicketSelectDao();
		
		List<ScreeningDateVo> screeningList = (List<ScreeningDateVo>) dao.getScreeningTimeList(conn, movieNo); 
		
		JDBCTemplate.close(conn);
		
		return screeningList;
	}

	
	
}
