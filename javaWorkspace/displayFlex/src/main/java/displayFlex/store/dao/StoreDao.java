package displayFlex.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import displayFlex.store.vo.StoreVo;
import test.JDBCTemplate;

public class StoreDao {

	// 스토어 목록 조회
	public List<StoreVo> selectStoreList(Connection conn) throws Exception {
		
		//sql
		String sql = "SELECT P.DETAIL_NO , C.CATE_NAME CATEGORY , P.MEMBER_NO MEMBER_NO , P.IMAGE , P.TITLE , P.PRICE , P.PRODUCT_ELEMENT , P.ENROLL_DATE , P.DEL_YN , P.SHORT_DESCRIPTION FROM PRODUCT P JOIN PRODUCT_CATEGORY C ON C.PRODUCT_CATE_NO = P.PRODUCT_CATE_NO JOIN MEMBER M ON M.MEMBER_NO = P.MEMBER_NO";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs
		List<StoreVo> storeVoList = new ArrayList<StoreVo>();
		while(rs.next()) {
			
			String detailNo = rs.getString("DETAIL_NO");
			String category = rs.getString("CATEGORY");
			String memberNo = rs.getString("MEMBER_NO");
			String image = rs.getString("IMAGE");
			String title = rs.getString("TITLE");
			String price = rs.getString("PRICE");
			String productElement = rs.getString("PRODUCT_ELEMENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String delYn = rs.getString("DEL_YN");
			String shortDescription = rs.getString("SHORT_DESCRIPTION");
			
			StoreVo vo = new StoreVo();
			vo.setDetailNo(detailNo);
			vo.setCategory(category);
			vo.setMemberNo(memberNo);
			vo.setImage(image);
			vo.setTitle(title);
			vo.setPrice(price);
			vo.setProductElement(productElement);
			vo.setEnrollDate(enrollDate);
			vo.setDelYn(delYn);
			vo.setShortDescription(shortDescription);
			
			storeVoList.add(vo);
			
		}
		
		//close
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return storeVoList;
	
	}

}
