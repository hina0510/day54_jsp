<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>del.jsp</h1>
	<% 
		//session.removeAttribute("id"); //하나의 세션 만료
		//session.setMaxInactiveInterval(5); // 만료시간 설정
		session.invalidate(); // 모든 세션 삭제
	%>
	<hr>
	<a href="get.jsp">get.jsp</a>
	<a href="set.jsp">set.jsp</a>
</body>
</html>