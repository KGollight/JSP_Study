<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>EL과 변수</h1>

<%
	int a = 10;

	pageContext.setAttribute("b", 20);
%>

<h1>a = <%=a %></h1>
<h1>a = %{a}</h1>

<h1>b = <%=pageContext.getAttribute("b") %></h1>
<h1>b = ${b}</h1>

<h1>b가 있습니까? <%=pageContext.getAttribute("b") != null %></h1>
<h1>b가 있습니까? ${b!=null}, ${not empty b}</h1>

