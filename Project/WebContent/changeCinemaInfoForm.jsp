<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>MOVIE INFOMATION</title>
</head>
<body>
<%String m_cine_id = request.getParameter("cine_id");%>
<div class="container">
  <h1 class="my-4">��ȭ�� ���� ����</h1>
	 <form method ="post" action="changeCinemaInfo.jsp?cine_id=<%=m_cine_id %>">
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ�� �̸�" name="cine_name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�ּ�" name="cine_add" maxlength="30">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ��ȣ" name="cine_phonenum" maxlength="10">
	     </div>
	     
	    <input class="btn btn-primary" type="submit" value="�Է¿Ϸ�">
	    <input class="btn btn-primary" type ="reset" value="�ٽ��Է�">
	</form>
</div>
</body>
</html>