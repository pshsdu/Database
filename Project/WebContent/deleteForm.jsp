<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>ȸ�� Ż��</title>
</head>
<body>
<div class="container">
  <h1 class="my-4">ȸ��Ż��</h1>
	<form method="post" action="deletePro.jsp">
		<input  class="form-control" type="text" name="id" maxlength="12" placeholder="���̵�"><br />
		<input  class="form-control" type="password" name="passwd" maxlength="12" placeholder="�н�����"><br />
		<input  class="form-control" type="text" name="name" maxlength="12"placeholder="�̸�"><br />
		<input class="btn btn-primary" type="submit" value="�Է¿Ϸ�">
	</form></div>
</body>
</html>