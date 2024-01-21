package com.servlet.set2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("n1"));
		int num2 = Integer.parseInt(request.getParameter("n2"));
		String op = request.getParameter("operator");
		int rs = calc(num1, num2, op);
		
		request.setAttribute("result", rs);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("step2/calcResultView.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public int calc(int num1, int num2, String op) {
		int result = 0;
		if(op.equals("+")) {
			result = num1 + num2;
		} else if(op.equals("-")) {
			result = num1 - num2;
		} else if(op.equals("*")) {
			result = num1 * num2;
		} else if(op.equals("/")) {
			result = num1 / num2;
		} else {
			result = 0;
		}
		return result;
	}
}
