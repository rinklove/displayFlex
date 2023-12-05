package displayFlex.serviceCenter.faq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import displayFlex.serviceCenter.faq.vo.FaqVo;
import displayFlex.util.page.vo.PageVo;
import test.JDBCTemplate;


public class FaqDao {

	public List<FaqVo> selectFaqList(Connection conn , PageVo pvo) throws Exception {

		//sql
		String sql = "SELECT * FROM FAQ WHERE DELETE_YN = 'N' ODER BY NO DESC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
//		pstmt.
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		List<FaqVo> faqVoList = new ArrayList<FaqVo>();
		while(rs.next()) {
			String no = rs.getString("no");
			String categoryNo = rs.getString("CATEGORY_NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
//			String writerNo = rs.getString("WRITER_NO");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String deleteYn = rs.getString("DELETE_YN");
			
			FaqVo vo = new FaqVo();
			vo.setNo(no);
			vo.setCategoryNo(categoryNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			vo.setModifyDate(modifyDate);
			vo.setDeleteYn(deleteYn);
			
			faqVoList.add(vo);
			
		}
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return faqVoList;
		
		
	}
	


	public int selectFaqCount(Connection conn) throws Exception {
		
		//SQL
		String sql = "SELECT COUNT(*) as cnt FROM BOARD WHERE STATUS = 'O'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
	      
		ResultSet rs = pstmt.executeQuery();
	      
		//rs
		int cnt = 0;
		if(rs.next()) {
//			int cnt = rs.getInt("cnt");
			cnt = rs.getInt(1); //첫번째 열을 가져오겠다 라는 뜻, 계산에 써야되기 때문에 String이 아닌 Int로 받아줌
		}
		  
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		  
		return cnt;
	
	}

}