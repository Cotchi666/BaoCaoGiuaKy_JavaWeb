package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import beans.SinhVien;

@WebServlet("/JstlCoreEx")
public class JstlCoreEx extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<SinhVien> listSV = new ArrayList<SinhVien>();
		
		listSV.add(new SinhVien(1,"Harry Marhai"));
		listSV.add(new SinhVien(2, "Ronando"));
		listSV.add(new SinhVien(3, "Messi"));
		listSV.add(new SinhVien(4, "Chien Ne"));
		
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("studentlist", listSV);
		request.getRequestDispatcher("jstl_core_example01.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
