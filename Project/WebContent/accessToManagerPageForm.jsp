<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>������ ������ ����</title>
</head>
<body>
<script type="text/javascript">
     function checkFrm() {
    	 if(document.frm4.manager_id.value == ""){
        	alert("������ ���̵� �׸��� ������ϴ�.");
            return;
        }else if(document.frm4.manager_name.value == ""){
       	   alert("������ �̸� �׸��� ������ϴ�.");
             return;
    	}else if(document.frm4.deptno.value == ""){
        	   alert("�Ҽ� �׸��� ������ϴ�.");
              return;
          document.frm4.submit();
     	}
     }

     function checkFrm2() {
    	 if(document.frm4.manager_id.value == ""){
         	alert("������ ���̵� �׸��� ������ϴ�.");
         	return false; 
         }else if(document.frm4.manager_name.value == ""){
        	   alert("������ �̸� �׸��� ������ϴ�.");
        	   return false; 
     	 }else if(document.frm4.deptno.value == ""){
         	   alert("�Ҽ� �׸��� ������ϴ�.");
             return false;   
     	}
     }
</script>
<div class="container">
  <h1 class="my-4">������ ���� �Է�</h1>
	 <form name = "frm4" method ="post" action="accessToManagerPage.jsp">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="������ id" name="manager_id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="������ �̸�" name="manager_name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�Ҽ�" name="deptno" maxlength="10">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="�Է¿Ϸ�">
	    <input class="btn btn-primary" type ="reset" value="�ٽ��Է�">
	</form>
</div>
</body>
</html>