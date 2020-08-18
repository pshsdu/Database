<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
   	String cookieName = "id";
   	Cookie cookie = new Cookie(cookieName, "testCookie");
   	cookie.setMaxAge(60*2);
   	response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 생성</title>
</head>
<body>
	<h2>쿠키를 생성하는 페이지</h2>
	"<%=cookieName %>" 쿠키가 생성되었습니다.<br />
	<form method = "post" action="useCookie.jsp">
		<input type="submit" value="생성된 쿠키 확인">
	</form>
</body>
</html>