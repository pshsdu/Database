<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>ȸ������</title>
</head>
<body>
<div class="container">
  <h1 class="my-4">ȸ������</h1>
	 <form  method ="post" action="insertPro.jsp">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="���̵�" name="id" maxlength="10">
	     </div>
	     	     
	     <div class="form-group">
	     <input type="password" class="form-control" placeholder="�н�����" name="passwd" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�̸�" name="name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="����(ex: 2000.00.00)" name="birthday" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�ּ�" name="address" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ��ȣ" name="phone" maxlength="20">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="�Է¿Ϸ�">
	    <input class="btn btn-primary" type ="reset" value="�ٽ��Է�">
	</form>
</div>
</body>
</html>