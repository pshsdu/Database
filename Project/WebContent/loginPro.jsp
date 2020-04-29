<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import = "customer.LogonDBBean" %>

<% request.setCharacterEncoding("euc-kr"); %>    
    
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean logon = LogonDBBean.getInstance();
	int check = logon.userCheck(id, passwd);
	
	if(check == 1){
		session.setAttribute("id",id);
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
	<%} 
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>마이페이지</title>
</head>
<body>
<div class="container">
  <h1 class="my-4">마이페이지</h1>
	<p><a class="btn btn-primary" onclick="location.href='searchPro.jsp?customer_id=<%=id %>'">영화 예매</a></p>
	<p><a class="btn btn-primary" onclick="location.href='showReservation.jsp?customer_id=<%=id %>'">예매확인 및 취소</a></p>
	
	<form method="post" action="loginForm.jsp">
	 	<div class="form-group">
		     <input type="submit" class="btn btn-primary" value="돌아가기">
	    </div>
	</form>
	
	<form method="post" action="updateForm.jsp">
		<div class="form-group">
			<input class="btn btn-primary" type="submit" value="회원정보 수정">
		</div>
	</form>
	
	<form method="post" action="deleteForm.jsp">
		<div class="form-group">
			<input class="btn btn-primary" type="submit" value="탈퇴">
		</div>
	</form>
</div>
</body>
</html>