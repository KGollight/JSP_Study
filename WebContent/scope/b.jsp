<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>b.jsp</h1>

<%-- <h1>a = <%=a %></h1> --%>
<h1>b = <%=pageContext.getAttribute("b") %></h1>
<h1>c = <%=request.getAttribute("c") %></h1>
<h1>d = <%=session.getAttribute("d") %></h1>
<h1>e = <%=application.getAttribute("e") %></h1>

<h1><a href="a.jsp">a.jsp로 이동</a></h1>