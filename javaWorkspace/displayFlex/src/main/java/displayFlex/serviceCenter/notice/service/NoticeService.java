package displayFlex.serviceCenter.notice.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import displayFlex.serviceCenter.notice.dao.NoticeDao;
import displayFlex.serviceCenter.notice.vo.NoticeVo;
import displayFlex.util.page.vo.PageVo;
import test.JDBCTemplate;

public class NoticeService {

	//공지사항 목록 조회
	public List<NoticeVo> selectNoticeList(PageVo pvo) throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// dao
		NoticeDao dao = new NoticeDao();
		List<NoticeVo> NoticeVoList = dao.selectNoticeList(conn, pvo);
		
		// close
		JDBCTemplate.close(conn);
		
		return NoticeVoList;
	}
	
	//전체 게시글 갯수 조회
	public int selectBoardCount() throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// dao
		NoticeDao dao = new NoticeDao();
		int cnt = dao.selectNoticeCount(conn);
		
		// close
		JDBCTemplate.close(conn);
		
		return cnt;
		
	}

	// 공지사항 검색
	public List<NoticeVo> search(Map<String, String> m, PageVo pvo) throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// DAO
		NoticeDao dao = new NoticeDao();
		List<NoticeVo> noticeVoList = dao.search(conn , m, pvo);
		
		//close
		JDBCTemplate.close(conn);
		
		return noticeVoList;
	}

	// 게시글 갯수 조회 (검색값에 따라)
	public int selectSearchNoticeCount(Map<String, String> m) throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// DAO
		NoticeDao dao = new NoticeDao();
		int cnt = dao.getNoticeCountBySearch(conn , m);
		
		// close
		JDBCTemplate.close(conn);
		
		return cnt;
	}

		
}








