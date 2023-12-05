package displayFlex.serviceCenter.faq.service;

import java.sql.Connection;
import java.util.*;

import displayFlex.serviceCenter.faq.dao.FaqDao;
import displayFlex.serviceCenter.faq.vo.FaqVo;
import displayFlex.util.page.vo.PageVo;
import test.JDBCTemplate;

public class FaqService {

	//게시글 목록 조회
	public List selectFaqList(PageVo pvo) throws Exception {
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		// dao
		FaqDao dao = new FaqDao();
		List<FaqVo> FaqVoList = dao.selectFaqList(conn, pvo);
		
		// close
		JDBCTemplate.close(conn);
		
		return FaqVoList;
	}

	//전체 게시글 갯수 조회
	public int selectFaqCount() throws Exception {
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// dao
		FaqDao dao = new FaqDao();
		int cnt = dao.selectFaqCount(conn);
		
		// close
		JDBCTemplate.close(conn);
		
		return cnt;
		
	}
	
	

}
