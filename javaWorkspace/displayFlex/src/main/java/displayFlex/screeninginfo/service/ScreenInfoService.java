package displayFlex.screeninginfo.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import displayFlex.movie.vo.MovieVo;
import displayFlex.screeninginfo.dao.ScreenInfoDao;
import displayFlex.screeninginfo.vo.ScreeingInfoVo;
import displayFlex.screeninginfo.vo.ScreeningTimeVo;
import test.JDBCTemplate;

public class ScreenInfoService {

	private final ScreenInfoDao infoDao;
	
	public ScreenInfoService() {
		infoDao = new ScreenInfoDao();
	}
	/**
	 * 모든 영화 목록 가져오기
	 * @return
	 * @throws SQLException 
	 */
	public List<MovieVo> getAllMovie() throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		List<MovieVo> movieList = infoDao.getAllMovie(con);
		
		JDBCTemplate.close(con);
		return movieList;
	}
	
	/**
	 * 모든 상영관 가져오기
	 * @return
	 * @throws SQLException 
	 */
	public List<String> getAllTheater() throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		
		List<String> theaterList = infoDao.getAllTheater(con);
		JDBCTemplate.close(con);
		return theaterList;
	}
	
	/**
	 * 상영 정보 등록
	 * @param infoList
	 * @param timeList
	 * @return
	 * @throws SQLException 
	 */
	public int addScreeningInfo(List<ScreeingInfoVo> infoList, List<ScreeningTimeVo> timeList) throws SQLException {
		Connection con = JDBCTemplate.getConnection();
		int result = 0;
		for(int index = 0; index < infoList.size(); index++) {
			String findNo = infoDao.getInfoNoByCondition(infoList.get(index), con);

			//신규로 추가하는 경우
			if(findNo == null) {
				result = infoDao.addScreeningInfo(infoList.get(index), con);
				
				if(result == 1) {
					JDBCTemplate.commit(con);
					findNo = infoDao.getInfoNoByCondition(infoList.get(index), con);
				} else JDBCTemplate.rollback(con);
			}
			
			timeList.get(index).setScreeningInfoNo(findNo);
			result = infoDao.addScreeningTime(timeList.get(index), con);
			
			if(result == 1) {
				JDBCTemplate.commit(con);
			} else {
				JDBCTemplate.rollback(con);
			}
		}
		JDBCTemplate.close(con);
		return result;
	}

}
