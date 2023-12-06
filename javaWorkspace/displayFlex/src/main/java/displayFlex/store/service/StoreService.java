package displayFlex.store.service;

import java.sql.Connection;
import java.util.List;

import displayFlex.store.dao.StoreDao;
import displayFlex.store.vo.StoreVo;
import test.JDBCTemplate;

public class StoreService {

	public int selectStoreCount() {

	
		return 0;
	}

	// 스토어 목록 조회
	public List<StoreVo> selectStoreList() throws Exception{

		
		//conn
		Connection conn = JDBCTemplate.getConnection();

		//dao
		StoreDao dao = new StoreDao();
		List<StoreVo> storeVoList = dao.selectStoreList(conn);
		
		
		//close
		JDBCTemplate.close(conn);
		return storeVoList;
	
	}

}//class
