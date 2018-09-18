package study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * 서블릿으로 로그인 확인하는 클래스
 */
@WebServlet(urlPatterns = "/login.it")
public class MenuLoginServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MenuDao dao = new MenuDao();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		resp.setContentType("text/plain; charset=EUC-KR");
		PrintWriter out = resp.getWriter();
		out.println("검색 결과");
		try {
			boolean flag = dao.checkLogin(id, pw);
			
			if(flag) {
				out.println("로그인 성공!");
			}
			else {
				out.println("로그인 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
