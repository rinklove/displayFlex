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

}
