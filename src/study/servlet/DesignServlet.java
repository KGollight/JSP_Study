package study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *	약간의 디자인을 가미한 페이지를 사용자에게 전송 
 */
@WebServlet("/design")
public class DesignServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		웹에서 디자인의 기초가 되는 것이 html		(text/html)
		resp.setContentType("text/html; charset=euc-kr");
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>어때요 참 쉽죠?</h1>");
		out.println("<h2>어때요 참 쉽죠?</h2>");
		out.println("<h3>어때요 참 쉽죠?</h3>");
		out.println("</body>");
		out.println("</html>");
	}
}








