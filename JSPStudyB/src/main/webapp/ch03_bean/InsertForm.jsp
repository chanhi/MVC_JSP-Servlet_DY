<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ������</h1>
	<form method="post" action="usingBean_insert.jsp">
		ID : <input type="text" name="id" /><br>
		PW : <input type="password" name="pw" /><br>
		name: <input type="text" name="name" /><br>
		email: <input type="email" name="email" /><br>
		<input type="submit" value="ȸ������" />
		<input type="reset" value="���" />
	</form>
</body>
</html>