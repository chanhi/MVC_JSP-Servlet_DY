<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="02_02ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int myAge = Integer.parseInt(request.getParameter("age")) + 10;
out.println("10년 후 당신의 나이는" +myAge);
%>
</body>
</html>