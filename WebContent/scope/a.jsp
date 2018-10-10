<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>a.jsp</h1>

<%
	//JSP에서는 데이터의 유효범위가 기본적으로 page로 제한된다
	int a=10;
	//page가 아닌 다른 영역에 데이터 저장
	//[1] pageContext
	//pageContext.setAttribute("이름", 값);
	pageContext.setAttribute("b", 20);
	
	//[2] request
	request.setAttribute("c", 30);
	
	//[3] session
	session.setAttribute("d", 40);
	
	//[4] application
	application.setAttribute("e", 50);
%>
<h1>a = <%=a %></h1>
<h1>b = <%=pageContext.getAttribute("b") %></h1>
<h1>c = <%=request.getAttribute("c") %></h1>
<h1>d = <%=session.getAttribute("d") %></h1>
<h1>e = <%=application.getAttribute("e") %></h1>

<h1><a href="b.jsp">b.jsp로 이동</a></h1>