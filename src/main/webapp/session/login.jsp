<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(session.getAttribute("nick")==null){ // 세션이 없을 시%>
		login.jsp<br>
		<form action="chkUser.jsp" method="post">
			<input type="text" name="id"><br>
			<input type="text" name="pwd"><br>
			<input type="submit" value="로그인">
		</form>
	<% }else{%>
		<%= session.getAttribute("nick") %>님 로그인 상태입니다<br>
		<a href="main.jsp">main</a>
	<%} %>
</body>
</html>