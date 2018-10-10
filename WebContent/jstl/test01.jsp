<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--
	JSTL(Jsp Standard Tag Library)
	 - 자바에서 주로 쓰이는 코드들을 태그로 만들어놓은 것
	 - core			자바의 주요 연산(if, for, try~catch, .....)
	 - format		형식 태그(숫자, 날짜, .....)
	 - function		문자열 편집
	 - xml			xml 변환 처리
	 - sql			sql 명령 처리
	 
	 - jsp에서 view용으로 필요한 core, format만 학습
	 
	 - 사용하기 위해서는 페이지에 JSTL을 등록해야 한다(jstl-1.2.jar파일이 필요)
	 - (사실, EL도 jar파일이 필요하다... 단, Tomcat에 들어있을뿐)
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 변수 생성 : pageContext 객체에 추가, 자료형이 없음 -->
<c:set var="a" value="10"></c:set>

<h1>a = <%=pageContext.getAttribute("a") %></h1>
<h1>a = ${a}</h1>

<!-- 변수 값 변경 -->
<c:set var="a" value="hello"></c:set>
<h1>a = ${a}</h1>

<c:set var="a" value="1,2,3,4,5"></c:set>
<h1>a = ${a}</h1>

<!-- 변수 삭제 -->
<c:remove var="a"/>
<h1>a = ${a}</h1>
