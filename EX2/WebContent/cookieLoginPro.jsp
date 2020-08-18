<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "login.LogonDBBean" %>

<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean logon = LogonDBBean.getInstance();
	int check = logon.userCheck(id,passwd);
	
	if(check == 1){
		Cookie cookie = new Cookie("id", id);
		cookie.setMaxAge(20*60);
		response.addCookie(cookie);
		response.sendRedirect("cookieMain.jsp");
	}
	else{ %>
	<script>
		alert("아이디 또는 패스워드가 맞지 않습니다");
		history.go(-1);
	</script>
	<% } %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>