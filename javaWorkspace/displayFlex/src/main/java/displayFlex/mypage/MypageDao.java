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
		String sql = "SELECT COUNT(*) as cnt FROM EVENT WHERE EVENT_PROGRESS = 'N'";
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
		String sql = "SELECT * FROM ( SELECT ROWNUM RNUM, T.* FROM ( SELECT E.EVENT_NO , M.MEMBER_NO , E.EVENT_TITLE , E.EVENT_PROGRESS , E.EVENT_STARTDATE , E.EVENT_ENDDATE , E.EVENT_HIT FROM EVENT E JOIN MEMBER M ON E.MEMBER_NO = M.MEMBER_NO JOIN EVENT_TYPE T ON E.EVENTTYPE_NO = T.EVENTTYPE_NO WHERE E.EVENT_PROGRESS = 'N' ) T ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pvo.getStartRow());
		pstmt.setInt(2, pvo.getLastRow());
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		List<EventDto> eventDtoList = new ArrayList<EventDto>();
		while(rs.next()) {
			String eventNo = rs.getString("EVENT_NO");
			String memberNo = rs.getString("MEMBER_NO");
			String eventTitle = rs.getString("EVENT_TITLE");
			String eventProgress = rs.getString("EVENT_PROGRESS");
			String eventStartdate = rs.getString("EVENT_STARTDATE");
			String eventEnddate = rs.getString("EVENT_ENDDATE");
			String eventHit = rs.getString("EVENT_HIT");
			
			EventDto dto = new EventDto();
			dto.setEventNo(eventNo);
			dto.setMemberNo(memberNo);
			dto.setEventTitle(eventTitle);
			dto.setEventProgress(eventProgress);
			dto.setEventStartdate(eventStartdate);
			dto.setEventEnddate(eventEnddate);
			dto.setEventHit(eventHit);
			
			eventDtoList.add(dto);

		}
		
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return eventDtoList;
	}

}
