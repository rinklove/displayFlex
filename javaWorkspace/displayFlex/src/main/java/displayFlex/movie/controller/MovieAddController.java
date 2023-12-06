package displayFlex.movie.controller;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import displayFlex.movie.service.MovieService;
import displayFlex.movie.vo.ScreenGradeVo;

@WebServlet("/admin/movie/add")
@MultipartConfig(
		maxFileSize = 1024 * 1024/*1MB*/ * 10
		, maxRequestSize = 1024 * 1024 * 50
	)
public class MovieAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final MovieService movieService;

    public MovieAddController() {
    	movieService = new MovieService();
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.service(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//관람 등급 가져오기
			List<ScreenGradeVo> screenGradeList = movieService.getAllScreenGrade();
 			request.setAttribute("screenGrade", screenGradeList);
			request.getRequestDispatcher("/WEB-INF/views/movie/add.jsp").forward(request, response);			
		} catch (Exception e) {
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");								//영화 제목
			String director = request.getParameter("director");					//감독
			String poster = request.getParameter("poster");						//포스터
			String genre = request.getParameter("genre");						//장르
			String releaseDate = request.getParameter("releaseDate");			//개봉일
			String screenGrade = request.getParameter("screenGrade");		//관람 등급 번호
			String runningTime = request.getParameter("runningTime");		//상영 시간
			String actor = request.getParameter("actor");							//배우
			String rate = request.getParameter("rate");								//평점
			String story = request.getParameter("story");							//줄거리
			String mainImage = request.getParameter("mainImage");			//메인 페이지용 이미지
			Map<String,String[]> parameterMap = request.getParameterMap();
			
			for(Entry<String, String[]> entry : parameterMap.entrySet()) {
				System.out.println(entry.getKey());
				System.out.println(Arrays.stream(entry.getValue()).collect(Collectors.joining(" / ")));
				System.out.println();
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
