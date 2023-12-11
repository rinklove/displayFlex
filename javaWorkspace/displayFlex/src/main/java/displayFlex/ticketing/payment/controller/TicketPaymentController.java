package displayFlex.ticketing.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import displayFlex.member.MemberVo;
import displayFlex.ticketing.payment.service.PaymentService;
import displayFlex.ticketing.payment.vo.SelectCouponVo;

@WebServlet("/ticket/payment")
public class TicketPaymentController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			HttpSession session = req.getSession();
			MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");
			System.out.println(session.getAttribute("loginMember")); 
//			String memberNo = memberVo.getMemberNo();

			PaymentService ps = new PaymentService();
//			List<SelectCouponVo> couponList = ps.getCouponList(memberNo);	
			
//			req.setAttribute("couponList", couponList);
			
			req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketPayment.jsp").forward(req, resp);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
}
