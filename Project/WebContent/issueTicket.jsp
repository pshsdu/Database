<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import = "customer.LogonDBBean" %>
<%@ page import = "customer.LogonDataBean" %>

<% request.setCharacterEncoding("euc-kr"); %>    
    
<%
	//파라미터 값 읽어들이는 부분
	String reservation =request.getParameter("reservation");
	
	//데이터베이스와 연결
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass = "293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql="select point from movie.customerInfo where id= (select memberid from movie.reservation where reservation = " + reservation + ")";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery(sql);
		if(rs.next()){
			int point = rs.getInt(1);
			int newpoint = point+100;
			pstmt.close();
			
			sql = "update movie.customerInfo set point = " + newpoint +  " where id = (select memberid from movie.reservation where reservation = " + reservation + ")";
			pstmt=conn.prepareStatement(sql);
			pstmt.executeUpdate();
			pstmt.close();
		}
	
		sql = "update movie.reservation set ischecked = 1 where reservation = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,reservation);
		pstmt.executeUpdate();
		pstmt.close();
		
		response.sendRedirect("showCustomerInfo.jsp");
	}finally{
		if(pstmt != null) try {pstmt.close();}catch(SQLException sqle){}
		if(conn !=null) try {conn.close();}catch(SQLException sqle){}
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>