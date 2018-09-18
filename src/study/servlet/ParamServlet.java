package study.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 파라미터(Parameter)를 처리하는 방법
 *  - req(request)		요청객체
 *  - resp(response)	응답객체
 */
@WebServlet(urlPatterns="/param")
public class ParamServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		request를 이용해서 파라미터 정보를 읽어오자(무조건 String)
		
//		q라는파라미터정보를 읽겠습니다
		String q = req.getParameter("q");
		System.out.println("q = "+q);
		
//		p라는 파라미터 정보를 읽겠습니다
		String p = req.getParameter("p");
		System.out.println("p = "+p);
	}
}
