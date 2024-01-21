package com.servlet.step1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/h.do")
public class HellowServlet extends HttpServlet { //HttpServlet 상속 필요
	private static final long serialVersionUID = 1L;
       
  
    public HellowServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = new Date().toString();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(" ");
	}

}
