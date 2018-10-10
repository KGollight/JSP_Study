<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>각종 영역에 대해서 EL의 접근</h1>

<%
	//request		<-----------	requestScope
	//session			<-----------	sessionScope
	//application	<-----------	applicationScope

	request.setAttribute("a", 10);
	session.setAttribute("b", 20);
	application.setAttribute("c", 30);
%>

<h1>a = <%=request.getAttribute("a")%></h1>
<h1>a = ${requestScope.a}</h1>
<h1>a = ${a}</h1>

<h1>b = ${sessionScope.b}</h1>
<h1>b = ${b}</h1>

<h1>c = ${applicationScope.c}</h1>
<h1>c = ${c}</h1>

<h1>더하기 = ${a+b+c}</h1>










