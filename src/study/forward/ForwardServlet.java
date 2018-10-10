package study.forward;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/forward/result.it")
public class ForwardServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Random r = new Random();
		int dice = r.nextInt(6)+1;
		
		request.setAttribute("dice", dice);
		
//		포워딩 코드		=> 나의 뒤를 이어 result.jsp를 데려와 이어서 작업해라
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		dispatcher.forward(request, response);
		
//		리다이렉트 코드	=> 이 페이지는 여기까지 하고 result.jsp로 넘어가라
//		response.sendRedirect("result.jsp");
	}
}
