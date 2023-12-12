package displayFlex.ticketing.payment.service;

import java.sql.Connection;
import java.util.List;

import displayFlex.ticketing.payment.dao.PaymentDao;
import displayFlex.ticketing.payment.vo.SelectCouponVo;
import test.JDBCTemplate;

public class PaymentService {

	public List<SelectCouponVo> getCouponList(String memberNo) throws Exception {
		
		Connection conn = JDBCTemplate.getConnection();
		
		PaymentDao dao = new PaymentDao();
		List<SelectCouponVo> couponList = dao.getCouponList(conn, memberNo);
		
		JDBCTemplate.close(conn);
		
		return couponList;
	}

	public SelectCouponVo getSelectCouponInfo(String selectedRetainedNo) throws Exception {
		
		Connection conn = JDBCTemplate.getConnection();
		
		PaymentDao dao = new PaymentDao();
		
		SelectCouponVo vo = dao.getSelectCouponInfo(selectedRetainedNo, conn);
		
		JDBCTemplate.close(conn);
		
		return vo;
	}

}
