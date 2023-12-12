package displayFlex.ticketing.payment.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.stream.JsonReader;

import displayFlex.member.MemberVo;
import displayFlex.ticketing.payment.service.PaymentService;
import displayFlex.ticketing.payment.vo.SelectCouponVo;
import displayFlex.ticketing.payment.vo.UserGradeVo;

@WebServlet("/ticket/payment")
public class TicketPaymentController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			HttpSession session = req.getSession();
			MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");

			String memberNo = memberVo.getMemberNo();

			PaymentService ps = new PaymentService();
			List<SelectCouponVo> couponList = ps.getCouponList(memberNo);	
			UserGradeVo vo = ps.getUserGrade(memberNo);
			req.setAttribute("userGradeVo", vo);
			req.setAttribute("couponList", couponList);
			req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketPayment.jsp").forward(req, resp);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			BufferedReader reader = req.getReader();
//			StringBuilder stringBuilder = new StringBuilder();
			
	        String selectedRetainedNo = reader.readLine();
	        
	        if(selectedRetainedNo.matches("\\d+")) {
	        	System.out.println(selectedRetainedNo);
	        	PaymentService ps = new PaymentService();
	        	SelectCouponVo vo = ps.getSelectCouponInfo(selectedRetainedNo); 
	        	
	        	Gson gson = new Gson();
	        	String gsonVo = gson.toJson(vo);
	        	resp.setCharacterEncoding("UTF-8");
	        	PrintWriter out = resp.getWriter();
	        	out.write(gsonVo);	        	
	        }
//	        Gson gson = new GsonBuilder().create();
//	        SelectCouponVo vo = gson.fromJson(line, SelectCouponVo.class);
//	       
//	        System.out.println(vo);
		} catch(Exception e) {
			e.printStackTrace();
		}

	}
	
}

