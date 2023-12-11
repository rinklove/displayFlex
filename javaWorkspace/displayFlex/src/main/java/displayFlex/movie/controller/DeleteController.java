package displayFlex.movie.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.member.MemberVo;
import displayFlex.movie.service.MovieService;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/admin/movie/delete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private final MovieService movieService;
	
    public DeleteController() {
        super();
        movieService = new MovieService();
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.service(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String movieNo = request.getParameter("movieNo");
		try {
			MemberVo loginMember = (MemberVo) request.getSession().getAttribute("loginMember");
			if(loginMember == null || loginMember.getAdminYn().equals("N")) {
				throw new Exception("관리자만 이용가능한 기능입니다.");
			}
			
			int result = movieService.deleteMovieByNo(movieNo);
			
			if(result != 1) {
				throw new Exception("영화 삭제에 실패했습니다.");
			}
			
			request.getSession().setAttribute("alertMsg", "영화를 삭제했습니다.");
			response.sendRedirect(request.getContextPath()+"/movie/list?pno=1");			
		} catch (Exception e) {
			e.printStackTrace();
			request.getSession().setAttribute("alertMsg", e.getMessage());
			response.sendRedirect(request.getContextPath()+"/movie/detail?movieNo=" + movieNo);
		}
	}

}
