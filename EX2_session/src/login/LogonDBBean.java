package login;
import java.sql.*;

public class LogonDBBean {
	private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance() {
		return instance;
	}
	
	public void insertMember(LogonDataBean member) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into member.member values (?, ?, ?, ?);");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4, member.getReg_date());
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			if(pstmt != null) try {pstmt.close();}catch(SQLException sqle) {}
			if(conn != null) try {conn.close();}catch(SQLException sqle) {}
		}
	}
	
	public int userCheck(String id, String passwd) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1; 
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select passwd from member.member where id = ?;");
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd = rs.getString("passwd");
				if(dbpasswd.equals(passwd)) {
					x = 1; //인증성공
				}
				else {
					x = 0; //인증실패
				}
			}
			else {
				x = -1; //해당 아이디 없음
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			if(pstmt != null) try {pstmt.close();}catch(SQLException sqle) {}
			if(conn != null) try {pstmt.close();}catch(SQLException sqle) {}
			if(rs != null) try {pstmt.close();}catch(SQLException sqle) {}
		}
		return x;
	}
	
	private LogonDBBean() {}
	
	private Connection getConnection() throws Exception{
		Connection conn = null;
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/member?useSSL=false";
		String dbId = "root";
		String dbPass = "293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		return conn;
	}
}
