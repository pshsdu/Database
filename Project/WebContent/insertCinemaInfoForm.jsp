<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
<title>��ȭ�� ���� �Է�</title>
</head>
<body>
<script type="text/javascript">
     function checkFrm() {
            //���� ���� �˻� : ������ ���ο���...
            if(document.frm2.cine_id.value == ""){
                    alert("ID�� �����ϴ�.");
                    return;
            }
            document.frm1.submit();
     }

     //submit
     function checkFrm2() {
            if(document.frm2.cine_id.value == ""){
                    alert("ID�� �����ϴ�.");
                    return false;
            }      
     }
</script>
<div class="container">
  <h1 class="my-4">��ȭ�� ���� �Է�</h1>
	 <form name = "frm2" method ="post" action="insertCinemaInfo.jsp" onsubmit="return checkFrm2()">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ�� id" name="cine_id" maxlength="10">
	     </div>
	     	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�̸�" name="cine_name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ�� �ּ�" name="cine_add" maxlength="30">
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