package displayFlex.store.controller;

import java.io.IOException;
import java.util.ArrayList;
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

		try {
			
			//data
			String category = req.getParameter("category");
			
			//service
			StoreService ss = new StoreService();
			List<StoreVo> storeVoList = ss.selectStoreList(category);
			
			//result (==view)
			
			//확인용
//			System.out.println("==========스토어 리스트======");
//			for(StoreVo storeVo : storeVoList) {
//				System.out.println(storeVo);
//			}
			
			req.setAttribute("storeVoList", storeVoList);
			req.getRequestDispatcher("/WEB-INF/views/store/storeList.jsp").forward(req, resp);
			
		}catch(Exception e) {
			System.out.println("[ERROR-S001] 스토어 목록 조회중 에러발생...");
			e.printStackTrace();
			req.setAttribute("errorMsg" , "스토어 목록조회 실패");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
		
	
	}//doGet
	
	//스토어 관리자용
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	
	}
	
	
}//class
