<%@page import="javax.swing.text.Document"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		System.out.println(id);
		Connection con = DBConnect.getConnect();
		String sql = "select * from student where id="+id;
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	%>
	<h1>인적 사항</h1>
	<% while(rs.next()){ %>
	<h3>학번 : <%= rs.getString("id")%></h3>
	<h3>이름 : <%= rs.getString("name")%></h3>
	<h3>국, 영, 수 : <%= rs.getString("kor")%>, <%= rs.getString("eng")%>, <%= rs.getString("math")%></h3><br>
	<% } %>
	<a href="select.jsp">뒤로</a>
</body>
</html>