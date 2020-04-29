<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*"%>

<%request.setCharacterEncoding("euc-kr");%>
<% String customer_id = request.getParameter("customer_id");
   String reserve_num = request.getParameter("reserve_num");%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>예약 목록</title>
</head>
<body>
<div class="container">
  	<h1 class="my-4">예매 취소</h1>
  	<form method="post" action="deleteReservationPro.jsp">
		<input class="btn btn-primary" onclick= "history.go(-1)" value="돌아가기">
		<input class="btn btn-primary" type = "submit" value="예매 취소">
		<input type = "hidden" name="customer_id" value=<%=customer_id%>>
		<input type = "hidden" name="reserve_num" value=<%=reserve_num%>>
		<div class = "row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">영화</th>
						<th style="background-color: #eeeeee; text-align: center;">극장</th>
						<th style="background-color: #eeeeee; text-align: center;">상영관</th>
						<th style="background-color: #eeeeee; text-align: center;">상영 시간</th>
						<th style="background-color: #eeeeee;"></th>
					</tr>
	<% 
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LinkedList<String> a = new LinkedList<>();
		int cnt = 0;
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
			String dbId = "root";
			String dbPass ="293734";
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
			
			String sql="select * from movie.reservation,movie.theater,movie.info,movie.cinema where showid=thea_id and m_cine_id = cine_id and m_movie_id = id and memberid ='"+customer_id+"';";
			pstmt = con.prepareStatement(sql);
				//pstmt.setString(1,customer_id);
			rs = pstmt.executeQuery(sql);
			while(rs.next()){
				
	%>		<tbody>
				<input type = "hidden" name="reservation" value=<%=rs.getString("reservation")%>>
				<input type = "hidden" name="movie_id" value=<%=rs.getString("id")%>>
				<tr>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("cine_name")%></td>
					<td><%=rs.getString("thea_id")%>관</td>
					<td><%=rs.getString("showtime")%></td>
					<td><input type="radio" value=<%=rs.getString("thea_id")%> name="thea_id"></td>
				</tr>
	<%
			}
		pstmt.close();
		rs.close();
		
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(pstmt != null) try{pstmt.close();} catch(SQLException sqle){}
			if(con != null) try{con.close();} catch(SQLException sqle){}
		}
	%>
			</tbody>
		</table>
	</div>
</form>
</div>
</body>
</html>
</body>
</html>