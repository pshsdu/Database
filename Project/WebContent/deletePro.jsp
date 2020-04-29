<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<% request.setCharacterEncoding("euc-kr"); %>    
    
<%
	//�Ķ���� �� �о���̴� �κ�
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	//�����ͺ��̽��� ����
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
				alert("���� ������ Ȯ�����ּ���.");	
				history.back(-2);
				</script><%
			}
			else{
				pstmt.close();
				rs.close();
				
				sql = "select id, password from movie.customerInfo where id= ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery(); //���� ���� ����
				
				if(rs.next()){//query�� �����ϰ� ������ ���ڵ� ����Ʈ
					String rId = rs.getString("id");
					String rPasswd = rs.getString("password");
					
					if(id.equals(rId) && passwd.equals(rPasswd)){
						sql = "delete from movie.customerInfo where id = ?";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, id);
						pstmt.executeUpdate();
						
						%><script>
						alert("Ż�� �Ϸ�Ǿ����ϴ�.");
						location.href="loginForm.jsp";
						</script><%
					}
					else{
						%><script>
						alert("���̵� �н����带 �ٽ� �Է��ϼ���.");
						location.href="deleteForm.jsp";
						</script><%
					}
				}
				else
				{
					%><script>
					alert("������ �����ϴ�.");
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