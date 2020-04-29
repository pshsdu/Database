<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>

<%request.setCharacterEncoding("euc-kr");%>

<% 
	String id = request.getParameter("cine_id");
	String name = request.getParameter("cine_name");
	String add = request.getParameter("cine_add");
	String phonenum = request.getParameter("cine_phonenum");
	
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
		
		String sql = "insert into movie.cinema values(?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,name);
		pstmt.setString(3,add);
		pstmt.setString(4,phonenum);
		pstmt.executeUpdate();
		response.sendRedirect("showCinemaInfo.jsp");
	}
	
	catch(Exception e){
		e.printStackTrace();
		str = "입력이 실패했습니다.";
		response.sendRedirect("insertCinemaInfoForm.jsp");
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