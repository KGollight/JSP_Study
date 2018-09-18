package menu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MenulistServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			Class.forName("oracle.jdbc.OricleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sw5", "sw5");
			
			String sql = "select*from menu";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			List<MenuDto> list = new ArrayList<>();
			while (rs.next()) {
				MenuDto mdto = new MenuDto();
				mdto.setName(rs.getString("name"));
				mdto.setPrice(rs.getInt("price"));
				list.add(mdto);
			}

//			rs.close();
//			ps.close();
			con.close();

//			사용자에게 보낼 준비
			resp.setContentType("text/plain; charset=EUC-KR");
			PrintWriter out = resp.getWriter();

			for (MenuDto mdto : list) {
				out.println(mdto);
			}
			
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
