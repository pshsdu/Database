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
				sql = "Update member set name = ? where id = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setString(2,id);
				pstmt.executeUpdate();
			
				str = "member ���̺��� ���ڵ带 �����Ͽ����ϴ�.";
			}
			
			else{
			str = "���̵� �н����尡 Ʋ�Ƚ��ϴ�";
			}
		}
		
		else{
			str = "query ������ Ʋ�Ƚ��ϴ�.";
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