<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>회원가입</title>
</head>
<body>
<div class="container">
  <h1 class="my-4">회원가입</h1>
	 <form  method ="post" action="insertPro.jsp">
		 <div class="form-group">
	     <input type="text" class="form-control" placeholder="아이디" name="id" maxlength="10">
	     </div>
	     	     
	     <div class="form-group">
	     <input type="password" class="form-control" placeholder="패스워드" name="passwd" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="이름" name="name" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="생일(ex: 2000.00.00)" name="birthday" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="주소" name="address" maxlength="10">
	     </div>
	     
	     <div class="form-group">
	     <input type="text" class="form-control" placeholder="전화번호" name="phone" maxlength="20">
	     </div>
   
	    <input class="btn btn-primary" type="submit" value="입력완료">
	    <input class="btn btn-primary" type ="reset" value="다시입력">
	</form>
</div>
</body>
</html>