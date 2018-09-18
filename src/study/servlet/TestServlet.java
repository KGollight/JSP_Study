package study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ����(Servlet)
 *  - ��û�� ���� �� �ִ� �ڹ� ����
 *  - ��Ģ�� ���Ѽ� ������ ���� Apache Tomcat�� ���񽺸� ����
 * [��Ģ]
 * [1] Servlet�� �Ҽӵ� ��(javax.servlet.http.HttpServlet)
 * [2] �� ���Ͽ� ������ ������ �ּҸ� �ο�(test.itbank)
 * 	- WEB-INF/web.xml ���Ͽ� �ο�
 * 	- annotation�� �̿�
 * [3] ����ڰ� ��û�� ������ ó���� �� �ִ� ����� ����
 */
public class TestServlet extends HttpServlet {
	
	/**
	 * ��û ó�� �޼ҵ� : �޴���
	 */
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		����ڰ� ���� �� �� �ְ� �ڵ带 �ۼ�
		System.out.println("hello");
		
//		�̹� ������ ���۵����� �����ͼ� ����ϰ� ����
		resp.setContentType("text/plain; charset=EUC-KR");
		PrintWriter out = resp.getWriter();
		out.println("�ȳ��ϼ���");
		out.println("�ݰ����ϴ�");
		out.close();
	}
}
