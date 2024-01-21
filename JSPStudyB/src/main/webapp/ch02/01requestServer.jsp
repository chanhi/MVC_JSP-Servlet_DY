<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String[] hobby = request.getParameterValues("hobby");
		String result = "";
		
		if(id.equals("dongyang") && pw.equals("1234")){
			result = "Login Success";
		} else if(id.equals("dongyang") && !pw.equals("1234")){
			result = "Login Failed";
		} else{
			result = "[" + id + "] is not exist";
		}
	%>
	<%= result %>
	<%= String.join(", ", hobby) %>
	<%= request.getParameter("username") %>
	
	<hr/>
	<% //response.sendRedirect("02responseRedirect.jsp");%>
	<jsp:forward page="02responseRedirect.jsp" />
</body>
</html>