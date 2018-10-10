package study.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/menu/list.it")
public class MenuListServlet2 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
//			DB접속
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "sw5", "sw5");
			
			String sql = "select * from menu order by name asc";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			List<MenuDto> list = new ArrayList<>();
			while(rs.next()) {
				MenuDto mdto = new MenuDto();
				mdto.setName(rs.getString("name"));
				mdto.setPrice(rs.getInt("price"));
				list.add(mdto);
			}
			
			con.close();
			
//			출력
			req.setAttribute("list", list);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/jsp/list.jsp");
			dispatcher.forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
