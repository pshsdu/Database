<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <meta name="viewport" content="width=device-width" initial-scale="1">
	 <link rel="stylesheet" href="css/bootstrap.min.css">

<title>SelectAction</title>
</head>
<body>
	<div class="container">
	<h1 class="my-4">당신의 권한을 선택하세요.</h1>
	<form method ="post">    
	    <a class="btn btn-primary" onclick= "location.href='loginForm.jsp'">고객</a>
	    <a class="btn btn-primary" onclick= "location.href='accessToManagerPageForm.jsp'">관리자</a>
	</form>
</div>
</body>
</html>