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
		
//		������ �ڵ�		=> ���� �ڸ� �̾� result.jsp�� ������ �̾ �۾��ض�
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		dispatcher.forward(request, response);
		
//		�����̷�Ʈ �ڵ�	=> �� �������� ������� �ϰ� result.jsp�� �Ѿ��
//		response.sendRedirect("result.jsp");
	}
}
