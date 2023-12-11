package displayFlex.ticketing.payment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import displayFlex.ticketing.payment.vo.SelectCouponVo;

public class PaymentDao {

	public List<SelectCouponVo> getCouponList(Connection conn, String memberNo) throws Exception {

		String sql ="";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberNo);
		
		ResultSet rs = pstmt.executeQuery();
		
		List<SelectCouponVo> couponList = new ArrayList<SelectCouponVo>();
		while(rs.next()) {
			
		}
		
		
		return couponList;
	}

}
