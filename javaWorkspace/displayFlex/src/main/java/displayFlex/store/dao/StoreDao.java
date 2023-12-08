package displayFlex.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import displayFlex.store.vo.StoreVo;
import test.JDBCTemplate;

public class StoreDao {
	
	// 스토어 메뉴 리스트
	public List<StoreVo> selectMenuList(Connection conn) throws Exception{
	
		//sql
		String sql = "SELECT CATE_NAME CATEGORY FROM PRODUCT_CATEGORY";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		List<StoreVo> storeVoList2 = new ArrayList<StoreVo>();
		
		while(rs.next()) {
			String category = rs.getString("CATEGORY");
			StoreVo storeVo = new StoreVo(category);
			
			storeVoList2.add(storeVo);
		}
		
		//close
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return storeVoList2;
		
	}//selectMenuList

	// 스토어 리스트
	public List<StoreVo> selectStoreList(Connection conn) throws Exception {
		
		List<StoreVo> storeVoList = new ArrayList<StoreVo>();
		
		//sql
		String sql = "SELECT P.PRODUCT_NO , C.CATE_NAME CATEGORY , P.MEMBER_NO MEMBER_NO , P.IMAGE , P.TITLE , P.PRICE , P.PRODUCT_ELEMENT , P.ENROLL_DATE , P.DEL_YN , P.SHORT_DESCRIPTION FROM PRODUCT P JOIN PRODUCT_CATEGORY C ON C.PRODUCT_CATE_NO = P.PRODUCT_CATE_NO JOIN MEMBER M ON M.MEMBER_NO = P.MEMBER_NO WHERE C.CATE_NAME LIKE '베스트'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		while(rs.next()) {
			
			String productNo = rs.getString("PRODUCT_NO");
			String category  = rs.getString("CATEGORY");
			String memberNo = rs.getString("MEMBER_NO");
			String image = rs.getString("IMAGE");
			String title = rs.getString("TITLE");
			String price = rs.getString("PRICE");
			String productElement = rs.getString("PRODUCT_ELEMENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String delYn = rs.getString("DEL_YN");
			String shortDescription = rs.getString("SHORT_DESCRIPTION");
			
			StoreVo storeVo = new StoreVo(productNo, category, memberNo, image, title,price,productElement,enrollDate,delYn,shortDescription);
			
			storeVoList.add(storeVo);
			
		}
		
		//close
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return storeVoList;
	
	}


}
