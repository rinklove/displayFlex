package displayFlex.store.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import displayFlex.store.dao.StoreDao;
import displayFlex.store.vo.StoreVo;
import test.JDBCTemplate;

public class StoreService {
	
	// 스토어 메뉴 리스트(위에 보이는 메뉴 JSTL사용해 반복문 돌리기용)  
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

	// 스토어메뉴 리스트(fetch, gson 사용해서 클릭시 해당메뉴 데이터 보내는 데이터용)
	public List<StoreVo> storeMenuList(String cate) throws Exception {
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//dao
		StoreDao dao = new StoreDao();
		List<StoreVo> list = dao.storeMenuList(conn, cate);
		
		//tx
		
		//close
		JDBCTemplate.close(conn);
		
		return list;
	}

}//class
