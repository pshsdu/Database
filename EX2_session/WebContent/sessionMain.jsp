<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = "";
	try{
		id = (String)session.getAttribute("id");
		if(id == null || id.equals("")){
			response.sendRedirect("sessionLoginForm.jsp");
		}else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션을 이용한 간단한 회원인증</title>
</head>
<body>
	<b><%=id %></b>님이 로그인 하셨습니다.
	<form method = "post" action = "sessionLogout.jsp">
		<input type = "submit" value = "로그아웃">
	</form>
</body>
</html>
<% 
	}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
