<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CARE LAB</h1>
	<%
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();//쿠키값을 받아옴
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name : "+c.getName()+ "<br>");
				out.print("value : "+c.getValue()+ "<br>");
				if(c.getName().equals("testCookie")){
					bool = false;
				}
			}
		}
		
		Cookie cookie = new Cookie("testCookie", "myCookie"); //쿠키 생성
		cookie.setMaxAge(5);	//쿠키 지속시간(초)
		cookie.setPath("/");	//쿠키 사용할 수 있는 경로, 최상위로 설정시 모든 경로에서 사용 가능
		response.addCookie(cookie); //쿠키 설정
	%>
	<% if(bool){%>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width=300, height=200, top=500, left=500");
	</script>
	<% } %>
</body>
</html>