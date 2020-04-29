<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>

<%request.setCharacterEncoding("euc-kr");%>

<% 
	String m_cine_id = request.getParameter("cine_id");
	String cine_name = request.getParameter("cine_name");
	String cine_add = request.getParameter("cine_add");
	String cine_phonenum = request.getParameter("cine_phonenum");
	
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
		
		String sql = "update movie.cinema set cine_name = ?, cine_add=?, cine_phonenum=? where cine_id = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,cine_name);
		pstmt.setString(2,cine_add);
		pstmt.setString(3,cine_phonenum);
		pstmt.setString(4,m_cine_id);
		pstmt.executeUpdate();
		response.sendRedirect("showCinemaInfo.jsp");
		
	}
	
	catch(Exception e){
		e.printStackTrace();
		str = "입력이 실패했습니다.";
		response.sendRedirect("changeCinemaInfoForm.jsp");
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