<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> Login </h2>
	<form method="post" action="01requestServer.jsp">
		아이디: <input type="text" name="id"/><br>
		비밀번호: <input type="password" name="pw"/><br>
		이름: <input type="text" name="username" /><br>
		<input type="submit" />
		<input type="reset" /><br>
		성별: 남<input type="radio" name="gender" value="man" /> 여<input type="radio" name="gender" value="woman" /><br>
		취미: 축구<input type="checkbox" name="hobby" value="h1" /> 
			농구<input type="checkbox" name="hobby" value="h2" />
			배구<input type="checkbox" name="hobby" value="h3" /><br>
		아이디 저장<input type="checkbox" value=""/>
	</form>
	
</body>
</html>