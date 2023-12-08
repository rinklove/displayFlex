package displayFlex.store.service;

import java.sql.Connection;
import java.util.List;

import displayFlex.store.dao.StoreDao;
import displayFlex.store.vo.StoreVo;
import test.JDBCTemplate;

public class StoreService {
	
	// 스토어 메뉴 리스트
	public List<StoreVo> selectMenuList() throws Exception{
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//dao 
		StoreDao dao = new StoreDao();
		List<StoreVo> storeVoList2 = dao.selectMenuList(conn);
		
		//close
		JDBCTemplate.close(conn);
		return storeVoList2;
		
	}// selectMenuList

	// 스토어 리스트
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
