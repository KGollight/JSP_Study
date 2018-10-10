<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<h1>파라미터 처리와 조건문</h1>

<form action="test02.jsp" method="get">
	<input type="number" name="money" placeholder="월급 입력">
	<input type="submit" placeholder="확인">
</form>

<!-- 전송된 파라미터를 받아서 JSTL 변수 money에 저장 후 출력 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="money" value="${param.money}"></c:set>
<h1>money=${money}</h1>

<!-- if 태그는 단독으로만 사용할 수 있다(else가 없다) -->
<c:if test="${money<0}">
	<h1>장난합니까?</h1>
</c:if>

<!-- 여러 조건을 따져야 하는 경우는 c:choose 태그를 사용한다. -->
<c:choose>
	<c:when test="${money>500}">
		<h1>친하게 지내요!</h1>
	</c:when>
	<c:when test="${money>250}">
		<h1>조금만 친하게 지내요!</h1>
	</c:when>
	<c:otherwise>
		<h1>뉘신지?</h1>
	</c:otherwise>
</c:choose>



