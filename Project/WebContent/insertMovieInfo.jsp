<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>

<%request.setCharacterEncoding("euc-kr");%>

<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String director = request.getParameter("director");
	String appearance = request.getParameter("appearance");
	String grade = request.getParameter("grade");
	String summary = request.getParameter("summary");
	String runtime = request.getParameter("runtime");

	
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	Connection con = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass ="293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		
		
		String sql = "insert into movie.info values(?,?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,name);
		pstmt.setString(3,director);
		pstmt.setString(4,appearance);
		pstmt.setString(5,grade);
		pstmt.setString(6,summary);
		pstmt.setTimestamp(7,register);
		pstmt.setString(8,runtime);
		pstmt.setInt(9,0);
		pstmt.executeUpdate();
		response.sendRedirect("showMovieInfo.jsp");
	}
	
	catch(Exception e){
		e.printStackTrace();
		str = "입력이 실패했습니다.";
		response.sendRedirect("insertMovieInfoForm.jsp");
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