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
		���̵�: <input type="text" name="id"/><br>
		��й�ȣ: <input type="password" name="pw"/><br>
		�̸�: <input type="text" name="username" /><br>
		<input type="submit" />
		<input type="reset" /><br>
		����: ��<input type="radio" name="gender" value="man" /> ��<input type="radio" name="gender" value="woman" /><br>
		���: �౸<input type="checkbox" name="hobby" value="h1" /> 
			��<input type="checkbox" name="hobby" value="h2" />
			�豸<input type="checkbox" name="hobby" value="h3" /><br>
		���̵� ����<input type="checkbox" value=""/>
	</form>
	
</body>
</html>