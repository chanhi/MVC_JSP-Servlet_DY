package com.servlet.jstlEl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/list.do")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegisterDAO rdao=new RegisterDAO();
		try {
			ArrayList<RegisterDTO> mList=rdao.selectMemberList();
			HttpSession session=request.getSession();
			session.setAttribute("vlist", mList);
			session.setAttribute("loginCheck", "ok");
			RequestDispatcher dispatcher=request.getRequestDispatcher("jstlEl/memberList.jsp");
			dispatcher.forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
