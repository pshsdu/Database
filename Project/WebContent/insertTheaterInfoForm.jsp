<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
<title>상영관 정보 입력</title>
</head>
<body>
<script type="text/javascript">
     function checkFrm() {
            if(document.frm3.m_cine_id.value == ""){
           	   alert("영화관 아이디 항목이 비었습니다.");
                  return;
            }else if(document.frm1.m_movie_id.value == ""){
         	   alert("영화 아이디 항목이 비었습니다.");
               return;
       		}else if(document.frm1.thea_id.value == ""){
          	   alert("상영관 아이디 항목이 비었습니다.");
                return;
        	}else if(document.frm1.sit_num.value == ""){
         	   alert("좌석수 항목이이 비었습니다.");
               return;
       		}else if(document.frm1.runtime.value == ""){
         	   alert("상영 시간 항목이 비었습니다.");
               return;
       		}
            document.frm1.submit();
     }

     //submit
     function checkFrm2() {
    	 if(document.frm3.m_cine_id.value == ""){
         	   alert("영화관 아이디 항목이 비었습니다.");
                return false;
          }else if(document.frm1.m_movie_id.value == ""){
       	   alert("영화 아이디 항목이 비었습니다.");
             return false;
     	  }else if(document.frm1.thea_id.value == ""){
        	   alert("상영관 아이디 항목이 비었습니다.");
              return false;
      	  }else if(document.frm1.sit_num.value == ""){
       	   alert("좌석수 항목이이 비었습니다.");
             return false;
     	  }else if(document.frm1.runtime.value == ""){
       	   alert("상영 시간 항목이 비었습니다.");
             return false;   
     }
</script>
<div class="container">
  <h1 class="my-4">상영관 정보 입력</h1>
	 <form name = "frm3" method ="post" action="insertTheaterInfo.jsp" onsubmit="return checkFrm2()">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화관 아이디" name="m_cine_id" maxlength="10">
	     </div>
	     	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화 아이디" name="m_movie_id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="상영관 아이디" name="thea_id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="좌석 수" name="sit_num" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="상영 시간" name="showtime" maxlength="10">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="입력완료">
	    <input class="btn btn-primary" type ="reset" value="다시입력">
	</form>
</div>
</body>
</html>