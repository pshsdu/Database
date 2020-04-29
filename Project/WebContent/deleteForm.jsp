<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>회원 탈퇴</title>
</head>
<body>
<div class="container">
  <h1 class="my-4">회원탈퇴</h1>
	<form method="post" action="deletePro.jsp">
		<input  class="form-control" type="text" name="id" maxlength="12" placeholder="아이디"><br />
		<input  class="form-control" type="password" name="passwd" maxlength="12" placeholder="패스워드"><br />
		<input  class="form-control" type="text" name="name" maxlength="12"placeholder="이름"><br />
		<input class="btn btn-primary" type="submit" value="입력완료">
	</form></div>
</body>
</html>