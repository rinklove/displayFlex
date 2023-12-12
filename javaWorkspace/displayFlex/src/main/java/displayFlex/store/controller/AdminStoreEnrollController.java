package displayFlex.store.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import displayFlex.store.vo.StoreVo;

@WebServlet("/admin/store/enroll")
@MultipartConfig(
		maxFileSize = 1024 * 1024/*1MB*/ * 10
		, maxRequestSize = 1024 * 1024 * 50
	)
public class AdminStoreEnrollController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/WEB-INF/views/store/adminStoreEnroll.jsp").forward(req, resp);
	
	}//doGet
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String title = req.getParameter("title");
		String price = req.getParameter("price");
		String productElement = req.getParameter("productElement");
		String shortDescription = req.getParameter("shortDescription");
		String enrollDate = req.getParameter("enrollDate");
		String category = req.getParameter("category");
		
		String image = null;
		
		Part f = req.getPart("f");
		System.out.println(f);
		System.out.println(f.getSubmittedFileName());
		
		//읽기 준비
		InputStream in = f.getInputStream();
		
		//내보내기 준비
		String sep = File.separator;
		String path = req.getServletContext().getRealPath(sep + "resources" + sep + "image" + sep + "store");
		String fileName = sep + f.getName();
		File target = new File(path + fileName);
		FileOutputStream out = new FileOutputStream(target);
		
		
		// 정리
		in.close();
		out.close();
		
	}//doPost


}//class
