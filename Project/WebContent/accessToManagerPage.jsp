<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "loginManager.LogonDBBeanManager" %>

<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = request.getParameter("manager_id");
	String name = request.getParameter("manager_name");
	String deptno = request.getParameter("deptno");
	
	LogonDBBeanManager logon = LogonDBBeanManager.getInstance();
	int check = logon.userCheck(id, name,deptno);
	
	if(check == 1){
		session.setAttribute("id",id);
		response.sendRedirect("selectAction.jsp");
	}else if(check == -1){%>
		<script>
			alert("존재하지 않는 아이디입니다.");
			history.go(-1);
		</script>
<% 	}
	else{ %>
		<script>
			alert("다시 입력하시오.");
			history.go(-1);
		</script>
	<%} %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>