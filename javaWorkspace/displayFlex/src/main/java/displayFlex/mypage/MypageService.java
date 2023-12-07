package displayFlex.mypage;

import java.sql.Connection;
import java.util.List;

import displayFlex.event.dto.EventDto;
import displayFlex.mypage.vo.PageVo;
import test.JDBCTemplate;

public class MypageService {

	public int selectMypageCount() throws Exception {
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//dao
		MypageDao dao = new MypageDao();
		int cnt = dao.selectMypageCount(conn);
		
		//close
		JDBCTemplate.close(conn);
		
		return cnt;
	}

	public List<EventDto> selectEventList(PageVo pvo) throws Exception {
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//dao
		MypageDao dao = new MypageDao();
		List<EventDto> eventDtoList = dao.selectEventList(conn, pvo);
		
		//close
		JDBCTemplate.close(conn);
		
		return eventDtoList;
	}

}
