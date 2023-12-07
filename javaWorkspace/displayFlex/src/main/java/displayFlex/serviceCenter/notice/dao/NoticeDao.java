package displayFlex.serviceCenter.notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import displayFlex.serviceCenter.faq.vo.FaqVo;
import displayFlex.serviceCenter.notice.vo.NoticeVo;
import displayFlex.util.page.vo.PageVo;
import test.JDBCTemplate;

public class NoticeDao {
	
	//공지사항 목록 조회
	public List<NoticeVo> selectNoticeList(Connection conn , PageVo pvo) throws Exception {
		
		//sql
		String sql = "SELECT * FROM ( SELECT ROWNUM RNUM , T.* FROM (SELECT NOTICE_NO ,TITLE ,CONTENT ,ENROLL_DATE ,MODIFY_DATE ,HIT FROM NOTICE WHERE DELETE_YN = 'N' ORDER BY NOTICE_NO DESC ) T ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pvo.getStartRow());
	    pstmt.setInt(2, pvo.getLastRow());
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		List<NoticeVo> noticeVoList = new ArrayList<NoticeVo>();
		while(rs.next()) {
			String noticeNo = rs.getString("NOTICE_NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String hit = rs.getString("HIT");
			
			NoticeVo vo = new NoticeVo();
			vo.setNoticeNo(noticeNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			vo.setModifyDate(modifyDate);
			vo.setHit(hit);
			
			noticeVoList.add(vo);
		}
		
		//result
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return noticeVoList;
	}

	//전체 게시글 갯수 조회
	public int selectNoticeCount(Connection conn) throws Exception {
		
		//SQL
		String sql = "SELECT COUNT(*) AS CNT FROM NOTICE WHERE DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
	      
		ResultSet rs = pstmt.executeQuery();
	      
		//rs
		int cnt = 0;
		if(rs.next()) {
			cnt = rs.getInt(1); //첫번째 열을 가져오겠다 라는 뜻, 계산에 써야되기 때문에 String이 아닌 Int로 받아줌
		}
		  
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		  
		return cnt;
			
	      
	}
	
	//공지사항 검색
	public List<NoticeVo> search(Connection conn, Map<String, String> m, PageVo pvo)  throws Exception {

		String searchType = m.get("searchType");
		
		// SQL
		String sql = "SELECT * FROM ( SELECT ROWNUM RNUM, T.* FROM ( SELECT NOTICE_NO , TITLE , CONTENT , ENROLL_DATE , MODIFY_DATE , HIT FROM NOTICE WHERE DELETE_YN = 'N' AND " + m.get("searchType") + " LIKE '%' || ?|| '%' ORDER BY NOTICE_NO DESC ) T ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, m.get("searchValue"));
		pstmt.setInt(2, pvo.getStartRow());
		pstmt.setInt(3, pvo.getLastRow());
		ResultSet rs = pstmt.executeQuery();
		
		// rs
	      List<NoticeVo> noticeVoList = new ArrayList<NoticeVo>();
	      while(rs.next()) {
	         String noticeNo = rs.getString("NOTICE_NO");
	         String title = rs.getString("TITLE");
	         String content = rs.getString("CONTENT");
	         String enrollDate = rs.getString("ENROLL_DATE");
	         String modifyDate = rs.getString("MODIFY_DATE");
	         String hit = rs.getString("HIT");
	         
	         NoticeVo vo = new NoticeVo();
	         vo.setNoticeNo(noticeNo);
	         vo.setTitle(title);
	         vo.setContent(content);
	         vo.setEnrollDate(enrollDate);
	         vo.setModifyDate(modifyDate);
	         vo.setHit(hit);
	         
	         noticeVoList.add(vo);
	      }
	
		// close
	    JDBCTemplate.close(rs);
	    JDBCTemplate.close(pstmt);
	      
	    return noticeVoList;
	
	}

	// 게시글 갯수 조회 (검색값에 따라)
	public int getNoticeCountBySearch(Connection conn, Map<String, String> m) throws Exception {
		
		// SQL
		String sql = "SELECT COUNT(*) FROM NOTICE WHERE DELETE_YN = 'N' AND " + m.get("searchType") + " LIKE '%' || ? || '%'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, m.get("searchValue"));
		ResultSet rs = pstmt.executeQuery();
		
		// rs
		int cnt = 0;
		if(rs.next()) {
			cnt = rs.getInt(1);
		}
		
		// close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return cnt;
	}

	

	

}
