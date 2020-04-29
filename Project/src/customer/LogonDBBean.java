package customer;
import java.sql.*;

public class LogonDBBean {
private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance() {
		return instance;
	}
	
	public int getId() {
		LogonDataBean member = new LogonDataBean();
		int id = Integer.parseInt(member.getId());
		return id;
		
	}
	
	public int userCheck(String id, String passwd) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from movie.customerInfo where id = ?;");
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd = rs.getString("password");
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
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/movie?useSSL=false";
		String dbId = "root";
		String dbPass = "293734";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		return conn;
	}
}
