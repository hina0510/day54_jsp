<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>get.jsp</h1>
	id : <%= session.getAttribute("id")%><br>
	<% String name = (String)session.getAttribute("name");%>
	name : <%= name %>
	<hr>
	<a href="set.jsp">set.jsp</a>
	<a href="del.jsp">del.jsp</a>
</body>
</html>