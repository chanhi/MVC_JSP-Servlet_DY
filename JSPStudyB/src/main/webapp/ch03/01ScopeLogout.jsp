<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("loginInfo");
	response.sendRedirect("01ScopeLoginForm.jsp");
%>