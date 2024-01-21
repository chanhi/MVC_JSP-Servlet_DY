<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page import='java.sql.*' %>
<%
request.setCharacterEncoding("utf-8");
String memberid = request.getParameter("id");
String password = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
	
//드라이버 로딩, WEB-INF > lib에 connector 넣기
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = null;
try{
	//DB연결
	String jdbc = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPw = "1234";
	conn = DriverManager.getConnection(jdbc, dbUser, dbPw);
	//쿼리 실행
	String sql = "insert into memberTbl values ('" + memberid + "', '" + password + "', '" + name + "', '" + email + "');";
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(sql);
} catch (Exception e) {
	
} finally {
	//DB close
	conn.close();
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>