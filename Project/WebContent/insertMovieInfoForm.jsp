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
<script type="text/javascript">
     function checkFrm() {
            if(document.frm1.id.value == ""){
           	   alert("���̵� �׸��� ������ϴ�.");
                  return;
            }else if(document.frm1.name.value == ""){
         	   alert("���� �׸��� ������ϴ�.");
               return;
       		}else if(document.frm1.director.value == ""){
          	   alert("���� �׸��� ������ϴ�.");
                return;
        	}else if(document.frm1.appearance.value == ""){
         	   alert("�⿬�� �׸����� ������ϴ�.");
               return;
       		}else if(document.frm1.runtime.value == ""){
         	   alert("��Ÿ�� �׸��� ������ϴ�.");
               return;
       		}
            document.frm1.submit();
     }

     //submit
     function checkFrm2() {
    	 if(document.frm1.id.value == ""){
         	   alert("���̵� �׸��� ������ϴ�.");
                return false;
          }else if(document.frm1.name.value == ""){
       	   alert("���� �׸��� ������ϴ�.");
             return false;
     		}else if(document.frm1.director.value == ""){
        	   alert("���� �׸��� ������ϴ�.");
              return false;
      	}else if(document.frm1.appearance.value == ""){
       	   alert("�⿬�� �׸����� ������ϴ�.");
             return false;
     		}else if(document.frm1.runtime.value == ""){
       	   alert("��Ÿ�� �׸��� ������ϴ�.");
             return false;
     		}    
     }
</script>

<div class="container">
  <h1 class="my-4">��ȭ ���� �Է�</h1>
	 <form name = "frm1" method ="post" action="insertMovieInfo.jsp" onsubmit= "return checkFrm2()">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ ���̵�" name="id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��ȭ ����" name="name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="����" name="director" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�⿬��" name="appearance" maxlength="20">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="����" name="grade" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="�ٰŸ�" name="summary" maxlength="30">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="��Ÿ��" name="runtime" maxlength="10">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="�Է¿Ϸ�">
	    <input class="btn btn-primary" type ="reset" value="�ٽ��Է�">
	</form>
</div>
</body>
</html>

