<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<% request.setCharacterEncoding("euc-kr"); %>    
    
<%
	//�Ķ���� �� �о���̴� �κ�
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String birthday = request.getParameter("birthday");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	
	//�����ͺ��̽��� ����
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass = "293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		//�����ͺ��̽� ���� ����
		String sql = "insert into movie.customerinfo values(?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setString(4, birthday);
		pstmt.setString(5, address);
		pstmt.setString(6, phone);
		pstmt.setInt(7,1000);
		pstmt.executeUpdate(); //���� ���� ����
		str = "ȸ������ �Ϸ�";
	}
	catch(Exception e){
		e.printStackTrace();
		str = "ȯ���մϴ�.";
	}
	finally{
		if(pstmt != null) try {pstmt.close();}catch(SQLException sqle){}
		if(conn !=null) try {conn.close();}catch(SQLException sqle){}
	}
%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ �Ϸ�</title>
</head>
<body>
<script>	location.href="loginForm.jsp";</script>

</body>
</html>