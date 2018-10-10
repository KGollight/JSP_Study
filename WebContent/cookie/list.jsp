<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//list.jsp		쿠키 목록을 출력하는 방법을 학습
	Cookie[] arr = request.getCookies();
	//(주의) 쿠키가 단 한개도 없으면 arr==null		...(ex) 최초 접속 시
	if(arr!=null){
		for(Cookie ck : arr){
			out.println("<h1>이름 : "+ck.getName()+"</h1>");
			out.println("<h1>값 : "+ck.getValue()+"</h1>");
		}
	}
%>