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
           	   alert("아이디 항목이 비었습니다.");
                  return;
            }else if(document.frm1.name.value == ""){
         	   alert("제목 항목이 비었습니다.");
               return;
       		}else if(document.frm1.director.value == ""){
          	   alert("감독 항목이 비었습니다.");
                return;
        	}else if(document.frm1.appearance.value == ""){
         	   alert("출연진 항목이이 비었습니다.");
               return;
       		}else if(document.frm1.runtime.value == ""){
         	   alert("런타임 항목이 비었습니다.");
               return;
       		}
            document.frm1.submit();
     }

     //submit
     function checkFrm2() {
    	 if(document.frm1.id.value == ""){
         	   alert("아이디 항목이 비었습니다.");
                return false;
          }else if(document.frm1.name.value == ""){
       	   alert("제목 항목이 비었습니다.");
             return false;
     		}else if(document.frm1.director.value == ""){
        	   alert("감독 항목이 비었습니다.");
              return false;
      	}else if(document.frm1.appearance.value == ""){
       	   alert("출연진 항목이이 비었습니다.");
             return false;
     		}else if(document.frm1.runtime.value == ""){
       	   alert("런타임 항목이 비었습니다.");
             return false;
     		}    
     }
</script>

<div class="container">
  <h1 class="my-4">영화 정보 입력</h1>
	 <form name = "frm1" method ="post" action="insertMovieInfo.jsp" onsubmit= "return checkFrm2()">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화 아이디" name="id" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화 제목" name="name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="감독" name="director" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="출연진" name="appearance" maxlength="20">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="평점" name="grade" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="줄거리" name="summary" maxlength="30">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="런타임" name="runtime" maxlength="10">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="입력완료">
	    <input class="btn btn-primary" type ="reset" value="다시입력">
	</form>
</div>
</body>
</html>

