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
  <h1 class="my-4">상영관 정보 수정</h1>
	 <form method ="post" action="changeTheaterInfo.jsp?thea_id=<%=m_id %>">
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="상영중인 영화 아이디" name="m_movie_id" maxlength="12">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="최대 좌석 수" name="max_sit" maxlength="24">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화 상영 예정 시각" name="reserved_time" maxlength="12">
	     </div>  
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화 상영 예정일" name="reserved_date" maxlength="12">
	     </div>    
   
	    <input class="btn btn-primary" type="submit" value="입력완료">
	    <input class="btn btn-primary" type ="reset" value="다시입력">
	</form>
</div>
</body>
</html>