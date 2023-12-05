package displayFlex.store.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.store.service.StoreService;
import displayFlex.store.vo.StoreVo;

@WebServlet("/store")
public class StoreListController extends HttpServlet{

	//스토어 리스트 화면 보여주기
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		StoreService ss = new StoreService();
		
		//data
		int listCount = ss.selectStoreCount();
		
		//service
//		List<StoreVo> storeVoList = ss.selectStoreList();
		
		//result (==view)
		
		req.getRequestDispatcher("/WEB-INF/views/store/storeList.jsp").forward(req, resp);
	
	}
	
	//스토어 관리자용
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	
	}
	
	
}//class
