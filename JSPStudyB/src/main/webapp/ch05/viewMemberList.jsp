<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page import='java.sql.*' %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>member list</title>
</head>
<body>
<%	
//드라이버 로딩, WEB-INF > lib에 connector 넣기
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = null;
PreparedStatement pstmt = null;
try{
	//DB연결
	String jdbc = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPw = "1234";
	conn = DriverManager.getConnection(jdbc, dbUser, dbPw);
	//쿼리 실행
	pstmt = conn.prepareStatement("select * from memberTbl;");
	ResultSet result = pstmt.executeQuery();
	while(result.next()){
		out.print(result.getString("memberId")+", ");
		out.print(result.getString("password")+", ");
		out.print(result.getString("name")+", ");
		out.print(result.getString("email")+"<br>");
		
	}
} catch (Exception e) {
	out.print(e);
} finally {
	//DB close
	conn.close();
}

%>
</body>
</html>