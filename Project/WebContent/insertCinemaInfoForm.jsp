<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
<title>영화관 정보 입력</title>
</head>
<body>
<script type="text/javascript">
     function checkFrm() {
            //값에 대한 검사 : 브라우저 내부에서...
            if(document.frm2.cine_id.value == ""){
                    alert("ID가 없습니다.");
                    return;
            }
            document.frm1.submit();
     }

     //submit
     function checkFrm2() {
            if(document.frm2.cine_id.value == ""){
                    alert("ID가 없습니다.");
                    return false;
            }      
     }
</script>
<div class="container">
  <h1 class="my-4">영화관 정보 입력</h1>
	 <form name = "frm2" method ="post" action="insertCinemaInfo.jsp" onsubmit="return checkFrm2()">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화관 id" name="cine_id" maxlength="10">
	     </div>
	     	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="이름" name="cine_name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화관 주소" name="cine_add" maxlength="30">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="전화번호" name="cine_phonenum" maxlength="10">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="입력완료">
	    <input class="btn btn-primary" type ="reset" value="다시입력">
	</form>
</div>
</body>
</html>