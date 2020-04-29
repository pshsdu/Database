package loginManager;
import java.sql.*;

public class LogonDBBeanManager {
private static LogonDBBeanManager instance = new LogonDBBeanManager();
	
	public static LogonDBBeanManager getInstance() {
		return instance;
	}
	
	public int userCheck(String id, String name , String deptno) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbname = "";
		String dbdeptno = "";
		int x = -1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from movie.manager where manager_id = ?;");
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbname = rs.getString("manager_name");
				dbdeptno = rs.getString("deptno");
				if(dbname.equals(name) && dbdeptno.equals(deptno)) {
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
	
	private LogonDBBeanManager() {}
	
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
