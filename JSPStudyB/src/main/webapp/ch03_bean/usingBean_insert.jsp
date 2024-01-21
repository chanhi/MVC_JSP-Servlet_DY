<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="com.dongyang.bean.RegisterBean" id="regBean" scope="session"></jsp:useBean>
<jsp:setProperty name="regBean" property="*" />
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>ID: <%=regBean.getId() %></h3>
	<h3>ID: <%=regBean.getPw() %></h3>
	<h3>ID: <%=regBean.getName() %></h3>
	<h3>ID: <jsp:getProperty property="email" name="regBean"/> <h3/>
</body>
</html> 