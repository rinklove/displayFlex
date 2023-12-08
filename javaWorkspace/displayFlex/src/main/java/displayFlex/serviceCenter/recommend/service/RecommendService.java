package displayFlex.serviceCenter.recommend.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import displayFlex.serviceCenter.notice.dao.NoticeDao;
import displayFlex.serviceCenter.notice.vo.NoticeVo;
import displayFlex.serviceCenter.recommend.dao.RecommendDao;
import displayFlex.serviceCenter.recommend.vo.RecommendVo;
import displayFlex.util.page.vo.PageVo;
import test.JDBCTemplate;

public class RecommendService {

	public List<RecommendVo> selectRecommendList(PageVo pvo) throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// dao
		RecommendDao dao = new RecommendDao();
		List<RecommendVo> recommendVoList = dao.selectRecommendList(conn, pvo);
		
		// close
		JDBCTemplate.close(conn);
		
		return recommendVoList;
		
	}

	//전체 게시글 갯수 조회
	public int selectRecommendCount() throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// dao
		RecommendDao dao = new RecommendDao();
		int cnt = dao.selectNoticeCount(conn);
		
		// close
		JDBCTemplate.close(conn);
		
		return cnt;
		
	}

	//검색
	public List<RecommendVo> search(Map<String, String> m, PageVo pvo) throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// DAO
		RecommendDao dao = new RecommendDao();
		List<RecommendVo> recommendVoList = null;
		
		if(m.get("searchType").equals("titcon")) {
			dao.searchByTitleAndContent(conn , m , pvo);
		}else {
			recommendVoList = dao.search(conn , m, pvo);
		}
		
		//close
		JDBCTemplate.close(conn);
		
		return recommendVoList;
		
	}

	//게시글 갯수 조회 (검색값에 따라)
	public int selectSearchRecommendCount(Map<String, String> m) throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// DAO
		RecommendDao dao = new RecommendDao();
		int cnt = dao.getRecommendCountBySearch(conn , m);
		
		// close
		JDBCTemplate.close(conn);
		
		return cnt;
		
	}

}
