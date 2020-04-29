<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<% request.setCharacterEncoding("euc-kr"); %>    
    
<%
	//파라미터 값 읽어들이는 부분
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	//데이터베이스와 연결
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass = "293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select count(*) from movie.reservation where memberid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()){
			int r = rs.getInt(1);
			if(r>0)	{
				%><script>
				alert("예매 내역을 확인해주세요.");	
				history.back(-2);
				</script><%
			}
			else{
				pstmt.close();
				rs.close();
				
				sql = "select id, password from movie.customerInfo where id= ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery(); //실제 쿼리 실행
				
				if(rs.next()){//query를 실행하고 가져온 레코드 리스트
					String rId = rs.getString("id");
					String rPasswd = rs.getString("password");
					
					if(id.equals(rId) && passwd.equals(rPasswd)){
						sql = "delete from movie.customerInfo where id = ?";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, id);
						pstmt.executeUpdate();
						
						%><script>
						alert("탈퇴가 완료되었습니다.");
						location.href="loginForm.jsp";
						</script><%
					}
					else{
						%><script>
						alert("아이디나 패스워드를 다시 입력하세요.");
						location.href="deleteForm.jsp";
						</script><%
					}
				}
				else
				{
					%><script>
					alert("정보가 없습니다.");
					location.href="deleteForm.jsp";
					</script><%
				}
			}
		}		
	}
	finally{
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