<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Calculator</h1>
<form action="/2023MVCmodel/calc" method="get">
	<input type="text" name="n1" />
	<select name="operator">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
	<input type="text" name="n2" />
	<input type="submit" value="do!" />
</form>
</body>
</html>