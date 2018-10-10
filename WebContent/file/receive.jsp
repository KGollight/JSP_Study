<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String method = request.getMethod();//요청방식 확인
	String ip = request.getRemoteAddr();//아이피 확인
	String p = request.getParameter("p");
	String f = request.getParameter("f");
%>

<h1>method = <%=method%></h1>
<h1>ip = <%=ip%></h1>
<h1>p = <%=p%></h1>
<h1>f = <%=f%></h1>

<%
	//multipart/form-data 방식의 요청을 수신하도록 코드를 구현(cos.jar필요)
	
	//String path = request.getContextPath();				//서비스 경로의 root
	String path = application.getRealPath("/file/upload");	//물리 경로의 root
	int size = 1*1024*1024;	//1MB
	String encoding = "UTF-8";
	
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	MultipartRequest mRequest = new MultipartRequest(request, path, size, encoding, policy);
	//new MultipartRequest(어디서, 어디에, 얼만큼, 어떻게, 중복정책)
%>

<h3>path = <%=path %></h3>
<!-- 일반 파라미터는 똑같이 추출 가능 -->
<h3>p = <%=mRequest.getParameter("p")%></h3>

<!-- 파일 관련된 정보들은 명령이 다르다! -->
<h3>f = <%=mRequest.getParameter("f")%></h3>
<h3>f = <%=mRequest.getFilesystemName("f")%></h3>

<!-- 업로드 형태(MIME-TYPE) -->
<h3>f = <%=mRequest.getContentType("f")%></h3>

<%
	//파일 인스턴스를 추출하여 나머지 정보들을 획득(단, 업로드 안한 경우 null!)
	File target = mRequest.getFile("f");
%>
<h3>f = <%=target.length() %></h3>







