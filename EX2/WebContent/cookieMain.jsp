<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = "";

	try{
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(int i = 0; i < cookies.length; i++){
				if(cookies[i].getName().equals("id")){
					id = cookies[i].getValue();
				}
			}
			if(id.equals("")){
				response.sendRedirect("loginForm.jsp");
			}
		}
		else{
			response.sendRedirect("loginForm.jsp");
		}
	}
	catch(Exception e){}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű�� �̿��� ������ ȸ������</title>
</head>
<body>
	<b><%=id %></b>���� �α����Ͽ����ϴ�.
	<form method="post" action="cookieLogout.jsp">
		<input type="submit" value="�α׾ƿ�">
	</form>
</body>
</html>