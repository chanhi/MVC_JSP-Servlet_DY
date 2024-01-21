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
	String lo = (String)session.getAttribute("loginInfo");
	if( lo==null ){
%>	
	<form method="post" action="01ScopeLoginProcess.jsp">
		ID : <input type="text" name="id" /><br>
		PW : <input type="password" name="pw" /><br>
		<input type="submit" value="로그인" />
		<input type="reset" value="취소" />
	</form>
<%		
	} else {
%>
	Hello! 
	<form method="post" action="01ScopeLogout.jsp">
		<input type="submit" value="Logout" />
	</form>
<%
	}
%>
</body>
</html>