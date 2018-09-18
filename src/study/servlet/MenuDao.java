package study.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MenuDao {
	private Connection con;
	
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sw5", "sw5");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	/**
	 * testuser테이블에 아이디와 비번이 존재하는지 판단하는 메소드
	 * @param id
	 * @param pw
	 * @return
	 * @throws Exception
	 */
	public boolean checkLogin(String id, String pw) throws Exception {
		con = this.getConnection();
		
		String sql = "select*from testuser where id=? and pw=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, pw);
		ResultSet rs = ps.executeQuery();
		
		//일치하는 값이 테이블에 없을 경우, result는 false
		boolean result = rs.next();
		
		con.close();
		
		return result;
	}
}
