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
//����̹� �ε�, WEB-INF > lib�� connector �ֱ�
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = null;
PreparedStatement pstmt = null;
try{
	//DB����
	String jdbc = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPw = "1234";
	conn = DriverManager.getConnection(jdbc, dbUser, dbPw);
	//���� ����
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