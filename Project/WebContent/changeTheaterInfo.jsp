<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>

<%request.setCharacterEncoding("euc-kr");%>

<% 
	String movie_id = request.getParameter("m_movie_id");
	String sit = request.getParameter("max_sit");
	String time = request.getParameter("reserved_time");
	String date = request.getParameter("reserved_date");
	String thea_id = request.getParameter("thea_id");
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null; 
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass ="293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		
		String sql = "update movie.theater set m_movie_id = ?, sit_num=?, showtime=?,showingdate = ? where thea_id = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,movie_id);
		pstmt.setString(2,sit);
		pstmt.setString(3,time);
		pstmt.setString(4,date);
		pstmt.setString(5,thea_id);
		pstmt.executeUpdate();
		
		response.sendRedirect("showTheaterInfo.jsp");
	}
	
	catch(Exception e){
		e.printStackTrace();
		str = "입력이 실패했습니다.";
		response.sendRedirect("changeTheaterInfoForm.jsp");
	}
	finally{
		if(pstmt != null) try{pstmt.close();} catch(SQLException sqle){}
		if(con != null) try{con.close();} catch(SQLException sqle){}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=str %>
</body>
</html>