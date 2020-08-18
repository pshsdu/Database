<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>

<%request.setCharacterEncoding("euc-kr"); %>

<% 
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	Connection con = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/member?useSSL=false";
		String dbId = "root";
		String dbPass = "293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select id, passwd from member where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rId = rs.getString("id");;
			String rPasswd = rs.getString("passwd");
			pstmt.close();
			
			if(id.equals(rId) && passwd.equals(rPasswd)){
				sql = "insert into member values(?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1,null);
				pstmt.setString(2,null);
				pstmt.setString(3,null);
				pstmt.setTimestamp(4,null);
				pstmt.executeUpdate();
			
				str = "member 테이블의 레코드를 삭제하였습니다.";
		}
		
		else{
			str = "아이디 패스워드가 틀렸습니다.";
		}
		}
	}
	
	finally{
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