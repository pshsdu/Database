<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import = "customer.LogonDBBean" %>
<%@ page import = "customer.LogonDataBean" %>
<%=request.getParameter("customer_id") %>
<% 	
	request.setCharacterEncoding("euc-kr"); 
	//파라미터 값 읽어들이는 부분
	String thea_id = request.getParameter("thea_id");
	String movie_id = request.getParameter("movie_id");
	String customer_id = request.getParameter("customer_id");
	String num = request.getParameter("num");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
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
		
		String sql = "select point from movie.customerInfo where id ='" + customer_id + "'";
		pstmt = conn.prepareStatement(sql);
		//pstmt.setString(1,customer_id);
		rs = pstmt.executeQuery(sql);
		if(rs.next()){
			int point = rs.getInt(1);
			
			if(point >= 1000 && point <= 8000){
				a = point;
			}else if(point > 8000){
				a = 8000;
			}else {
				a = 0;
			}
		
			String r = Integer.toString(a);
			out.println(r);
			
			%>
			<form name = "frm" method = "post" action="reservePro.jsp">
				<input type = "hidden" name="customer_id" value="<%=customer_id%>">
				<input type = "hidden" name="movie_id" value="<%=movie_id%>">
				<input type = "hidden" name="thea_id" value="<%=thea_id%>">
				<input type = "hidden" name="paid" value = "<%=r%>">
				<input type = "hidden" name="num" value = "<%=num%>">
			</form>
			<script type="text/javascript"> 
				document.frm.submit(); 
			</script>
		   <%
		}


	}finally{
		if(pstmt != null) try {pstmt.close();}catch(SQLException sqle){}
		if(conn !=null) try {conn.close();}catch(SQLException sqle){}
	}

%>
</body>
</html>