package study.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/menu/search.it")
public class MenuSearchServlet2 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
//			입력
			String q = request.getParameter("q");
			
//			처리
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection(
					"jdbc:oracle:thin:@127.0.0.1:1521:xe", "sw5", "sw5");
			String sql = "select * from menu where name = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, q);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				MenuDto mdto = new MenuDto();
				mdto.setName(rs.getString("name"));
				mdto.setPrice(rs.getInt("price"));
				request.setAttribute("mdto", mdto);
			}
			con.close();
			
//			출력
//			RequestDispatcher dispatcher = request.getRequestDispatcher("search.jsp");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/search.jsp");
			dispatcher.forward(request, response);
		}
		catch(Exception e) {
			response.sendError(500);
			e.printStackTrace();
		}
	}
}










