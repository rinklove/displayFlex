package displayFlex.movie.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import displayFlex.movie.dao.MovieDao;
import displayFlex.movie.dto.MovieDetailDto;
import displayFlex.movie.dto.MovieListDto;
import displayFlex.movie.vo.GenreCategoryVo;
import displayFlex.movie.vo.ScreenGradeVo;
import displayFlex.movie.vo.StillImageVo;
import displayFlex.util.page.vo.PageVo;
import test.JDBCTemplate;

public class MovieService {
	
	private final MovieDao movieDao;
	
	public MovieService() {
		movieDao = new MovieDao();
	}
	
	public List<GenreCategoryVo> getAllGenreCategory() throws SQLException {

		Connection con = JDBCTemplate.getConnection();
		
		List<GenreCategoryVo> genreList =  movieDao.getAllGenreCategory(con);
		
		JDBCTemplate.close(con);
		return genreList;
	}

	
	public List<ScreenGradeVo> getAllScreenGrade() throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		List<ScreenGradeVo> screenGradeList = movieDao.getAllScreenGrade(con);
		return screenGradeList;
	}

	public int getAllMovieCount() throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		int count = movieDao.getAllMovieCount(con);
		
		JDBCTemplate.close(con);
		return count;
	}

	/**
	 * 영화 리스트 가져오기
	 * @param page
	 * @return
	 * @throws SQLException 
	 */
	public List<MovieListDto> getMovieList(PageVo page) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		List<MovieListDto> movieList = movieDao.getAllMovieList(page, con);
		JDBCTemplate.close(con);
		return movieList;
	}

	/**
	 * 영화 번호로 상세 정보 가져오기
	 * @param movieNo
	 * @return
	 * @throws SQLException 
	 */
	public MovieDetailDto getMovieInfoByNo(String movieNo) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		MovieDetailDto findMovie = movieDao.getMovieInfoByNo(movieNo,con);
		
		JDBCTemplate.close(con);
		return findMovie;
	}

	/**
	 * 스틸이미지 가져오기
	 * @param movieNo
	 * @return
	 * @throws SQLException 
	 */
	public List<StillImageVo> getStillImageByMovieNo(String movieNo) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		List<StillImageVo> imageList = movieDao.getStillImageByMovieNo(movieNo, con);
		
		JDBCTemplate.close(con);
		return imageList;
	}

	/**
	 * 조건에 맞는 영화 전체 개수 가져오기
	 * @param genres
	 * @param grade
	 * @return
	 * @throws SQLException 
	 */
	public int getAllMovieCountByCondition(String[] genres, String grade) throws SQLException {

		Connection con = JDBCTemplate.getConnection();
		
		int count = movieDao.getAllMovieCountByCondition(genres, grade, con);
		JDBCTemplate.close(con);

		return count;
	}

	/**
	 * 조건에 맞는 영화 개수 가져오기
	 * @param genres
	 * @param grade
	 * @param page 
	 * @return
	 * @throws SQLException 
	 */
	public List<MovieListDto> findMoiveListByCondition(String[] genres, String grade, PageVo page) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		List<MovieListDto> movieList = movieDao.findMoiveListByCondition(genres, grade, page, con);
		JDBCTemplate.close(con);
		return movieList;
	}

	

	
	
}
