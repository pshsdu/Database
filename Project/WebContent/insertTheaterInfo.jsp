<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>

<%request.setCharacterEncoding("euc-kr");%>

<% 
	String cine_id = request.getParameter("m_cine_id");
	String movie_id = request.getParameter("m_movie_id");
	String thea_id = request.getParameter("thea_id");
	String sit_num = request.getParameter("sit_num");
	String showtime = request.getParameter("showtime");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass ="293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		
		
		String sql = "insert into movie.theater values(?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,thea_id);
		pstmt.setString(2,sit_num);
		pstmt.setString(3,showtime);
		pstmt.setString(4,"0");
		pstmt.setString(5,cine_id);
		pstmt.setString(6,movie_id);
		pstmt.setInt(7,0);
		pstmt.executeUpdate();
		response.sendRedirect("showTheaterInfo.jsp");
	}
	
	catch(Exception e){
		e.printStackTrace();
		str = "입력이 실패했습니다.";
		response.sendRedirect("insertTheaterInfoForm.jsp");
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