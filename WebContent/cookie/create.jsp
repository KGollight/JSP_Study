<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//create.jsp	쿠키를 생성하는 코드를 학습
	//				[1] 쿠키 인스턴스 생성		(주의) 한글 불가, 256자 제한
	//				[2] 유효 수명을 설정		(주의) 초단위로 설정, 미설정시 세션과 함께 사라짐
	//				[3] 내용을 작성하여 전송	(주의) 직접하는 것이 아니라 response를 활용
	
	Cookie ck = new Cookie("hello", "java");
	ck.setMaxAge(1*24*60*60);//1일
	ck.setPath(request.getContextPath());//프로젝트 전체에서 사용 가능하도록 설정
	response.addCookie(ck);
%>