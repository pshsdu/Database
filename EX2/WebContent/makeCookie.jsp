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
<title>��Ű ����</title>
</head>
<body>
	<h2>��Ű�� �����ϴ� ������</h2>
	"<%=cookieName %>" ��Ű�� �����Ǿ����ϴ�.<br />
	<form method = "post" action="useCookie.jsp">
		<input type="submit" value="������ ��Ű Ȯ��">
	</form>
</body>
</html>