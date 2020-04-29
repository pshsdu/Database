<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>로그인</title>
</head>
<body>
<div class="container">
  <h1 class="my-4">고객 로그인</h1>
	 <form name = "frm4" method ="post" action="loginPro.jsp">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="id" name="id" maxlength="10">
	     </div>

	     <div class="form-group">
	     <input type="password" class="form-control" placeholder="passwd" name="passwd" maxlength="10">
	     </div>
   		
   		<a class="btn btn-primary" onclick="location.href='insertForm.jsp'">회원가입</a>
	    <input class="btn btn-primary" type="submit" value="입력완료">
	    <input class="btn btn-primary" type ="reset" value="다시입력">
	</form>
</div>
</body>
</html>