package displayFlex.ticketing.payment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import displayFlex.ticketing.payment.vo.SelectCouponVo;
import test.JDBCTemplate;

public class PaymentDao {

	public List<SelectCouponVo> getCouponList(Connection conn, String memberNo) throws Exception {

		String sql ="SELECT RC.RETAINED_NO, RC.COUPON_NO, C.NAME, C.DISCOUNT, TO_CHAR(RC.COUPON_ENDDATE, 'YY-MM-DD') COUPON_ENDDATE FROM RETAINED_COUPON RC JOIN COUPON C ON C.NO = RC.COUPON_NO JOIN MEMBER M ON M.MEMBER_NO = RC.MEMBER_NO WHERE M.MEMBER_NO = ? AND RC.COUPON_STATUS = 'N' AND COUPON_DELETE = 'N' AND SYSDATE < RC.COUPON_ENDDATE";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberNo);
		
		ResultSet rs = pstmt.executeQuery();
		
		List<SelectCouponVo> couponList = new ArrayList<SelectCouponVo>();
		while(rs.next()) {
			String retainedNo = rs.getString("RETAINED_NO"); 
			String memberNo2 = memberNo;
			String couponNo = rs.getString("COUPON_NO");
			String name = rs.getString("NAME");
			String discount = rs.getString("DISCOUNT");
			String couponEnddate = rs.getString("COUPON_ENDDATE");
			
			SelectCouponVo vo = new SelectCouponVo(retainedNo, memberNo2, couponNo, name, discount, couponEnddate);
			
			couponList.add(vo);
		}

		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return couponList;
	}

	public SelectCouponVo getSelectCouponInfo(String selectedRetainedNo, Connection conn) throws Exception {

		String sql = "SELECT RC.COUPON_NO, C.NAME, C.DISCOUNT FROM RETAINED_COUPON RC JOIN COUPON C ON RC.COUPON_NO = C.NO WHERE RC.RETAINED_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, selectedRetainedNo);
		ResultSet rs = pstmt.executeQuery();
		
		SelectCouponVo vo = null;
		
		if(rs.next()) {
			String retainedNo = selectedRetainedNo;
			String couponNo = rs.getString("COUPON_NO");
			String name = rs.getString("NAME");
			String discount = rs.getString("DISCOUNT");

			vo = new SelectCouponVo(retainedNo, couponNo, name, discount);
		}
		
		
		System.out.println(vo);
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return vo;
	}

}
