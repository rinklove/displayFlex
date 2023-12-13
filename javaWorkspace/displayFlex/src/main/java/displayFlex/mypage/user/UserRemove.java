package displayFlex.mypage.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import displayFlex.member.MemberService;
import displayFlex.member.MemberVo;

@WebServlet("/mypage/correct/userRemove")
public class UserRemove extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String memberNo = req.getParameter("memberNo");
			MemberVo loginMember = (MemberVo) req.getSession().getAttribute("loginMember");
			if(loginMember == null) {
				throw new Exception("잘못된 접근입니다(로그인 안하고 탈퇴)");
			}
			MemberService ms = new MemberService();
			int result = ms.delete(memberNo);
			
			System.out.println(result);
			System.out.println(memberNo);
			
			if(result != 1) {
				throw new Exception("회원 탈퇴 중 에러발생..!");
			}
			HttpSession session = req.getSession();
	        session.setAttribute("alertMsg", "회원탈퇴가 완료되었습니다.");
			req.getRequestDispatcher("/WEB-INF/views/mypage/userRemove.jsp").forward(req, resp);

			
		}catch(Exception e) {
			System.out.println("[ERROR-U001] 회원 탈퇴 중 에러발생...!!");
			e.printStackTrace();
		}
		
	}

}
