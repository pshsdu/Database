<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ��</title>
</head>
<body>
	<h2>�α��� ��</h2>
	
	<form method="post" action="cookieLoginPro.jsp">
		���̵�:<input type="text" name="id" maxlength="12"><br />
		�н����� : <input type="password" name="passwd" maxlength="12"><br />
		<input type="submit" value="�α���">
		<input type="button" value="ȸ������" onclick="location.href='insertMemberForm.jsp'">
	</form>
</body>
</html>