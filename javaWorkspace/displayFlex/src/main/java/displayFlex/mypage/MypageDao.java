package displayFlex.mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import displayFlex.event.dto.EventDto;
import displayFlex.mypage.vo.PageVo;
import test.JDBCTemplate;

public class MypageDao {

	public int selectMypageCount(Connection conn) throws Exception {
		
		//sql
		String sql = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		int cnt = 0;
		if(rs.next()) {
			cnt = rs.getInt(1);
		}
		
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return cnt;
	}

	public List<EventDto> selectEventList(Connection conn, PageVo pvo) throws Exception {
		
		//sql
		String sql = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pvo.getStartRow());
		pstmt.setInt(2, pvo.getLastRow());
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		List<EventDto> eventVoList = new ArrayList<EventDto>();
		while(rs.next()) {
			
		}
		
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return eventVoList;
	}

}
