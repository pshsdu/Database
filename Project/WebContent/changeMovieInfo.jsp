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
		
		String sql = "update movie.info set name = ?, director=?, appearance=?, grade=?, summary=?, runtime=? where id = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,director);
		pstmt.setString(3,appearance);
		pstmt.setString(4,grade);
		pstmt.setString(5,summary);
		pstmt.setString(6,runtime);
		pstmt.setString(7,id);
		pstmt.executeUpdate();
		
		response.sendRedirect("showMovieInfo.jsp");
		
	}
	
	catch(Exception e){
		e.printStackTrace();
		str = "입력이 실패했습니다.";
		response.sendRedirect("changeMovieInfoForm.jsp");
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