<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>관리자 페이지 접근</title>
</head>
<body>
<script type="text/javascript">
     function checkFrm() {
    	 if(document.frm4.manager_id.value == ""){
        	alert("관리자 아이디 항목이 비었습니다.");
            return;
        }else if(document.frm4.manager_name.value == ""){
       	   alert("관리자 이름 항목이 비었습니다.");
             return;
    	}else if(document.frm4.deptno.value == ""){
        	   alert("소속 항목이 비었습니다.");
              return;
          document.frm4.submit();
     	}
     }

     function checkFrm2() {
    	 if(document.frm4.manager_id.value == ""){
         	alert("관리자 아이디 항목이 비었습니다.");
         	return false; 
         }else if(document.frm4.manager_name.value == ""){
        	   alert("관리자 이름 항목이 비었습니다.");
        	   return false; 
     	 }else if(document.frm4.deptno.value == ""){
         	   alert("소속 항목이 비었습니다.");
             return false;   
     	}
     }
</script>
<div class="container">
  <h1 class="my-4">관리자 정보 입력</h1>
	 <form name = "frm4" method ="post" action="accessToManagerPage.jsp">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="관리자 id" name="manager_id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="관리자 이름" name="manager_name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="소속" name="deptno" maxlength="10">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="입력완료">
	    <input class="btn btn-primary" type ="reset" value="다시입력">
	</form>
</div>
</body>
</html>