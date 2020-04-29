<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.sql.*"%>
<%@ page import = "login.LogonDBBean" %>

<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="member" class="login.LogonDataBean">
	<jsp:setProperty name ="member" property="*"/>
</jsp:useBean>

<%
	member.setReg_date(new Timestamp(System.currentTimeMillis()));
	LogonDBBean logon = LogonDBBean.getInstance();
	logon.insertMember(member);
%>

<jsp:getProperty property = "id" name = "member"/>님의 회원가입을 축하합니다.
<input type="button" value="돌아가기" onclick="location.href='loginForm.jsp'">

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
</body>
</html>