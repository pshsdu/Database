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
<%String m_id = request.getParameter("thea_id");%>
<div class="container">
  <h1 class="my-4">�󿵰� ���� ����</h1>
	 <form method ="post" action="changeTheaterInfo.jsp?thea_id=<%=m_id %>">
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="������ ��ȭ ���̵�" name="m_movie_id" maxlength="12">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�ִ� �¼� ��" name="max_sit" maxlength="24">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ �� ���� �ð�" name="reserved_time" maxlength="12">
	     </div>  
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ �� ������" name="reserved_date" maxlength="12">
	     </div>    
   
	    <input class="btn btn-primary" type="submit" value="�Է¿Ϸ�">
	    <input class="btn btn-primary" type ="reset" value="�ٽ��Է�">
	</form>
</div>
</body>
</html>