<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%! String scope1="public"; %>
<%!
public int add(int num1, int num2){
	return num1 + num2;
}
%>
<% String scope2 = "local"; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% int result = add(30, 40); %>
	덧셈결과1: <%= result %>
	덧셈결과2: <%= add(30, 40) %>
</body>
</html>