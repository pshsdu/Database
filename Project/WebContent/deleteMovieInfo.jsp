<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>
<%request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
String m_id = request.getParameter("id");
Connection con = null;
PreparedStatement pstmt = null;
int rs = 0;

try{
	String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
	String dbId = "root";
	String dbPass ="293734";
	
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	pstmt = con.prepareStatement("DELETE FROM MOVIE.INFO WHERE ID = '" + m_id +"'");
	pstmt.executeUpdate();
	pstmt.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
		if(pstmt != null) try{pstmt.close();} catch(SQLException sqle){}
		if(con != null) try{con.close();} catch(SQLException sqle){}
	}
response.sendRedirect("showMovieInfo.jsp");
%>

</body>
</html>