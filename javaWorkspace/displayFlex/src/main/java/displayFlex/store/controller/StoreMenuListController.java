package displayFlex.store.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import displayFlex.store.service.StoreService;
import displayFlex.store.vo.StoreVo;

@WebServlet("/store/menu")
public class StoreMenuListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//data
			String cate = req.getParameter("category");
			
			//service
			StoreService ss = new StoreService();
			Map<String, Object> map = ss.storeMenuList(cate);
			StoreVo vo = (StoreVo) map.get("vo");
			
			//result
			req.setAttribute("vo", vo);
			req.getRequestDispatcher("/WEB-INF/views/store/menuList.jsp").forward(req, resp);
			
		}catch(Exception e) {
			System.out.println("[ERROR-S002] 스토어 메뉴목록 불러오기 실패...");
			e.printStackTrace();
			req.setAttribute("errorMsg", "스토어 메뉴목록 불러오기 실패...");
			req.getRequestDispatcher("/WEB-INF/views/common.error.jsp").forward(req, resp);
		}
	
	}//doGet
	
}//class
