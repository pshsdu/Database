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
<%String m_id = request.getParameter("id");%>
<div class="container">
  <h1 class="my-4">영화 정보 수정</h1>
	 <form method ="post" action="changeMovieInfo.jsp?id=<%=m_id %>">
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="영화 제목" name="name" maxlength="12">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="감독" name="director" maxlength="12">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="출연진" name="appearance" maxlength="24">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="평점" name="grade" maxlength="12">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="줄거리" name="summary" maxlength="36">
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