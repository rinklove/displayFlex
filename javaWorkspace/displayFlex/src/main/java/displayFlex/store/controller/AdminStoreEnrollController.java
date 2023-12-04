package displayFlex.store.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/admin/store/enroll")
public class AdminStoreEnrollController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/WEB-INF/views/store/adminStoreEnroll.jsp").forward(req, resp);
	
	}//doGet
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Part f = req.getPart("f");
		System.out.println(f);
		System.out.println(f.getSubmittedFileName());
		
		//읽기 준비
		InputStream in = f.getInputStream();
		
		//내보내기 준비
		String sep = File.separator;
		String path = req.getServletContext().getRealPath(sep + "resources" + sep + "upload" + sep + "img");
		String fileName = sep + "abc.png";
		File target = new File(path + fileName);
		FileOutputStream out = new FileOutputStream(target);
	
	}//doPost


}//class
