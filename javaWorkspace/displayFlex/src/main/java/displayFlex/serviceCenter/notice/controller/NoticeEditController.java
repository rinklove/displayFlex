package displayFlex.serviceCenter.notice.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.serviceCenter.notice.service.NoticeService;
import displayFlex.serviceCenter.notice.vo.NoticeVo;

@WebServlet("/serviceCenter/noticeEdit")
public class NoticeEditController extends HttpServlet {
	
	//게시글 수정 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//data
			String noticeNo = req.getParameter("noticeNo");
			
			//service
			NoticeService ns = new NoticeService();
			NoticeVo vo = ns.edit(noticeNo);
			
			//result
			if(vo == null) {
				throw new Exception();
			}
			req.setAttribute("vo", vo);
			req.getRequestDispatcher("/WEB-INF/views/serviceCenter/notice/noticeEdit.jsp").forward(req, resp);
		}catch(Exception e) {
			System.out.println("공지사항 수정하기 화면 조회 에러");
			e.printStackTrace();
			req.setAttribute("errorMsg", "공지사항 수정 화면 조회 에러 ...");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
	}

}
