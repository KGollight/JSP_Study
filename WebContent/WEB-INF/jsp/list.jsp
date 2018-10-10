<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>메뉴 테이블의 결과를 반복하여 출력</h1>

<c:forEach var="mdto" items="${list}">
	<h1>이름 = ${mdto.name} / 가격 = ${mdto.price}원</h1>
</c:forEach>



