<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>JSTL로 반복 구현하기</h1>

for(int i=0; i<10; i++){}

<!-- 일반 반복문 -->
<c:forEach var="i" begin="0" end="9" step="1">
	<h1>forEach => ${i}</h1>
</c:forEach>

<!-- 확장 반복문 -->
<c:set var="a" value="java, jsp, c, cpp, python"></c:set>

<c:forEach var="sub" items="${a}" varStatus="stat">
	<h1>sub = ${sub}, 
			${stat.current}, ${stat.count}, ${stat.index}, 
			${stat.first}, ${stat.last}, ${stat.begin}, ${stat.end}, ${stat.step}</h1>
</c:forEach>

<c:set var="a" value="java-jsp-c-cpp-python"></c:set>
<c:forTokens var="sub" items="${a}" delims="-">
	<h1>sub = ${sub}</h1>
</c:forTokens>
