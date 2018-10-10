<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//delete.jsp	쿠키 삭제를 학습, 생성과 동일한 절차를 밟음
	Cookie ck = new Cookie("hello", "java");
	ck.setMaxAge(0);
	ck.setPath(request.getContextPath());//프로젝트 전체에서 사용 가능하도록 설정
	response.addCookie(ck);
%>