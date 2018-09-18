package study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * �������� �α��� Ȯ���ϴ� Ŭ����
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
		out.println("�˻� ���");
		try {
			boolean flag = dao.checkLogin(id, pw);
			
			if(flag) {
				out.println("�α��� ����!");
			}
			else {
				out.println("�α��� ����!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
