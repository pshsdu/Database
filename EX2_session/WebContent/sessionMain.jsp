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
<title>������ �̿��� ������ ȸ������</title>
</head>
<body>
	<b><%=id %></b>���� �α��� �ϼ̽��ϴ�.
	<form method = "post" action = "sessionLogout.jsp">
		<input type = "submit" value = "�α׾ƿ�">
	</form>
</body>
</html>
<% 
	}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
