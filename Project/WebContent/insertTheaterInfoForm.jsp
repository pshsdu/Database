<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
<title>�󿵰� ���� �Է�</title>
</head>
<body>
<script type="text/javascript">
     function checkFrm() {
            if(document.frm3.m_cine_id.value == ""){
           	   alert("��ȭ�� ���̵� �׸��� ������ϴ�.");
                  return;
            }else if(document.frm1.m_movie_id.value == ""){
         	   alert("��ȭ ���̵� �׸��� ������ϴ�.");
               return;
       		}else if(document.frm1.thea_id.value == ""){
          	   alert("�󿵰� ���̵� �׸��� ������ϴ�.");
                return;
        	}else if(document.frm1.sit_num.value == ""){
         	   alert("�¼��� �׸����� ������ϴ�.");
               return;
       		}else if(document.frm1.runtime.value == ""){
         	   alert("�� �ð� �׸��� ������ϴ�.");
               return;
       		}
            document.frm1.submit();
     }

     //submit
     function checkFrm2() {
    	 if(document.frm3.m_cine_id.value == ""){
         	   alert("��ȭ�� ���̵� �׸��� ������ϴ�.");
                return false;
          }else if(document.frm1.m_movie_id.value == ""){
       	   alert("��ȭ ���̵� �׸��� ������ϴ�.");
             return false;
     	  }else if(document.frm1.thea_id.value == ""){
        	   alert("�󿵰� ���̵� �׸��� ������ϴ�.");
              return false;
      	  }else if(document.frm1.sit_num.value == ""){
       	   alert("�¼��� �׸����� ������ϴ�.");
             return false;
     	  }else if(document.frm1.runtime.value == ""){
       	   alert("�� �ð� �׸��� ������ϴ�.");
             return false;   
     }
</script>
<div class="container">
  <h1 class="my-4">�󿵰� ���� �Է�</h1>
	 <form name = "frm3" method ="post" action="insertTheaterInfo.jsp" onsubmit="return checkFrm2()">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ�� ���̵�" name="m_cine_id" maxlength="10">
	     </div>
	     	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ ���̵�" name="m_movie_id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�󿵰� ���̵�" name="thea_id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�¼� ��" name="sit_num" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�� �ð�" name="showtime" maxlength="10">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="�Է¿Ϸ�">
	    <input class="btn btn-primary" type ="reset" value="�ٽ��Է�">
	</form>
</div>
</body>
</html>