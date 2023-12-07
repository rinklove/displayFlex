package displayFlex.serviceCenter.faq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import displayFlex.serviceCenter.faq.vo.CategoryVo;
import displayFlex.serviceCenter.faq.vo.FaqVo;
import displayFlex.util.page.vo.PageVo;
import test.JDBCTemplate;


public class FaqDao {

	//faq 목록 조회
	public List<FaqVo> selectFaqList(Connection conn , PageVo pvo) throws Exception {

		//sql
		String sql = "SELECT * FROM ( SELECT ROWNUM RNUM , T.* FROM (SELECT F.FAQ_NO ,F.FAQ_CATEGORY_NO ,F.TITLE ,F.CONTENT ,F.HIT ,F.ENROLL_DATE ,F.MODIFY_DATE ,FC.DIVISION AS CATEGORY_NAME FROM FAQ F JOIN FAQ_CATEGORY FC ON F.FAQ_CATEGORY_NO = FC.FAQ_CATEGORY_NO WHERE F.DELETE_YN = 'N' ORDER BY FAQ_NO DESC ) T ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pvo.getStartRow());
	    pstmt.setInt(2, pvo.getLastRow());
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		List<FaqVo> faqVoList = new ArrayList<FaqVo>();
		while(rs.next()) {
			String faqNo = rs.getString("FAQ_NO");
			String faqCategoryNo = rs.getString("FAQ_CATEGORY_NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String hit = rs.getString("HIT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String category_name = rs.getString("CATEGORY_NAME");
//			String deleteYn = rs.getString("DELETE_YN");
			
			FaqVo vo = new FaqVo();
			vo.setFaqNo(faqNo);
			vo.setFaqCategoryNo(faqCategoryNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setContent(hit);
			vo.setEnrollDate(enrollDate);
			vo.setModifyDate(modifyDate);
			vo.setCategoryName(faqCategoryNo);
			
			faqVoList.add(vo);
			
		}
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return faqVoList;
		
		
	}
	
	
	// 카테고리에 따른 FAQ 목록 조회
    public List<FaqVo> selectFaqListByCategory(Connection conn, String categoryNo, PageVo pvo) throws Exception {
        String sql = "SELECT * FROM ( SELECT ROWNUM RNUM , T.* FROM (SELECT F.FAQ_NO ,F.FAQ_CATEGORY_NO ,F.TITLE ,F.CONTENT ,F.HIT ,F.ENROLL_DATE ,F.MODIFY_DATE ,FC.DIVISION AS CATEGORY_NAME FROM FAQ F JOIN FAQ_CATEGORY FC ON F.FAQ_CATEGORY_NO = FC.FAQ_CATEGORY_NO WHERE F.FAQ_CATEGORY_NO = ? AND F.DELETE_YN = 'N' ORDER BY FAQ_NO DESC ) T ) WHERE RNUM BETWEEN ? AND ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, categoryNo);
            pstmt.setInt(2, pvo.getStartRow());
            pstmt.setInt(3, pvo.getLastRow());

            try (ResultSet rs = pstmt.executeQuery()) {
                List<FaqVo> faqVoList = new ArrayList<>();
                while (rs.next()) {
                	String faqNo = rs.getString("FAQ_NO");
        			String faqCategoryNo = rs.getString("FAQ_CATEGORY_NO");
        			String title = rs.getString("TITLE");
        			String content = rs.getString("CONTENT");
        			String hit = rs.getString("HIT");
        			String enrollDate = rs.getString("ENROLL_DATE");
        			String modifyDate = rs.getString("MODIFY_DATE");
        			String category_name = rs.getString("CATEGORY_NAME");
        			
        			FaqVo vo = new FaqVo();
        			vo.setFaqNo(faqNo);
        			vo.setFaqCategoryNo(faqCategoryNo);
        			vo.setTitle(title);
        			vo.setContent(content);
        			vo.setEnrollDate(enrollDate);
        			vo.setModifyDate(modifyDate);
        			vo.setCategoryName(faqCategoryNo);
                    faqVoList.add(vo);
                }
                return faqVoList;
            }
        }
    }
    

    // 카테고리에 따른 전체 FAQ 갯수 조회
    public int selectFaqCountByCategory(Connection conn, String categoryNo) throws Exception {
        String sql = "SELECT COUNT(*) as cnt FROM FAQ WHERE FAQ_CATEGORY_NO = ? AND DELETE_YN = 'N'";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, categoryNo);

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
                return 0;
            }
        }
    }
    
    //카테고리 목록 조회
	public List<CategoryVo> selectAllCategoryList(Connection conn) throws Exception {
	
		//sql
		String sql = "SELECT FAQ_CATEGORY_NO, DIVISION AS CATEGORY_NAME FROM FAQ_CATEGORY";
	      PreparedStatement pstmt = conn.prepareStatement(sql);
	      ResultSet rs = pstmt.executeQuery();
	
	      List<CategoryVo> categoryList = new ArrayList<>();
	      while (rs.next()) {
	          String faqCategoryNo = rs.getString("FAQ_CATEGORY_NO");
	          String categoryName = rs.getString("CATEGORY_NAME");
	
	          CategoryVo vo = new CategoryVo();
	          vo.setFaqCategoryNo(faqCategoryNo);
	          vo.setCategoryName(categoryName);
	
	          categoryList.add(vo);
	      }
	
	      JDBCTemplate.close(rs);
	      JDBCTemplate.close(pstmt);
	
	      return categoryList;
	  
		
	}


	public int selectFaqCount(Connection conn) throws Exception {
		
		//SQL
		String sql = "SELECT COUNT(*) as cnt FROM FAQ WHERE DELETE_YN = 'N'";
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


	//게시글 번호로 게시글 1개 조회
	public FaqVo selectFaqByNo(Connection conn, String faqNo) throws Exception {

		//SQL
	    String sql = "SELECT F.FAQ_NO ,F.FAQ_CATEGORY_NO ,F.TITLE ,F.CONTENT ,F.HIT ,F.ENROLL_DATE ,F.MODIFY_DATE ,FC.DIVISION AS CATEGORY_NAME FROM FAQ F JOIN FAQ_CATEGORY FC ON F.FAQ_CATEGORY_NO = FC.FAQ_CATEGORY_NO WHERE F.FAQ_NO = ? AND F.DELETE_YN = 'N'";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, faqNo);
	    ResultSet rs = pstmt.executeQuery();
	      
	    //rs
	    FaqVo vo = null;
	    if(rs.next()) {
			String title = rs.getString("TITLE");
			String faqCateforyNo = rs.getString("FAQ_CATEGORY_NO");
			String content = rs.getString("CONTENT");
			String hit = rs.getString("HIT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String categoryName = rs.getString("Category_Name");
	         
			vo = new FaqVo();
			vo.setTitle(title);
			vo.setFaqCategoryNo(faqCateforyNo);
			vo.setContent(content);
			vo.setHit(hit);
			vo.setEnrollDate(enrollDate);
			vo.setCategoryName(categoryName);
		         
	    }
	    
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return vo;
		
	}


	//조회수 증가
	public int increaseHit(Connection conn, String faqNo) throws Exception {
		
		//SQL
		String sql = "UPDATE FAQ SET HIT = HIT + 1 WHERE FAQ_NO = ? AND DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, faqNo);
		int result = pstmt.executeUpdate();
		
		//close
		JDBCTemplate.close(pstmt);
			      
		return result;
		
	}

}





















