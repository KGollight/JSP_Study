<%@page import="study.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//Student의 인스턴스를 session에 저장한 뒤 EL로 출력
	Student s = new Student();
	s.setName("홍길동");
	s.setScore(90);
	session.setAttribute("s", s);
%>
<h1>이름 = <%=((Student)session.getAttribute("s")).getName()%></h1>
<h1>이름 = ${sessionScope.s.getName()}</h1>
<h1>이름 = ${s.getName()}</h1>
<h1>이름 = ${s.name}</h1>
<h1>점수 = ${s.score}</h1>








