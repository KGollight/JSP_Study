package study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *	�ణ�� �������� ������ �������� ����ڿ��� ���� 
 */
@WebServlet("/design")
public class DesignServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		������ �������� ���ʰ� �Ǵ� ���� html		(text/html)
		resp.setContentType("text/html; charset=euc-kr");
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>��� �� ����?</h1>");
		out.println("<h2>��� �� ����?</h2>");
		out.println("<h3>��� �� ����?</h3>");
		out.println("</body>");
		out.println("</html>");
	}
}







