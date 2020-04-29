<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "customer.LogonDBBean" %>
<%@ page import = "customer.LogonDataBean" %>

<% request.setCharacterEncoding("euc-kr"); %>    
    
<%
	//파라미터 값 읽어들이는 부분
	String showid = request.getParameter("thea_id");
	String customer_id = request.getParameter("customer_id");
	String movie_id = request.getParameter("movie_id");
	String reservation =request.getParameter("reservation");
	String reserve_num =request.getParameter("reserve_num");
	
	//데이터베이스와 연결
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	ResultSet rs = null;

	int a;
	int reserv;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass = "293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "delete from movie.reservation where reservation = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,reservation);
		pstmt.executeUpdate();
		pstmt.close();
		
		sql = "select * from movie.theater where thea_id = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,showid);
		rs = pstmt.executeQuery();
		if(rs.next()){
			int num = Integer.parseInt(rs.getString("num_people"));
			pstmt.close();
			
			sql = "update movie.theater set num_people= ? where thea_id= " + showid;
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,num-Integer.parseInt(reserve_num));
			pstmt.executeUpdate();
			pstmt.close();
			response.sendRedirect("updateReserveRatio.jsp?customer_id=" + customer_id);
			}
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