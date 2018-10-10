<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>EL의 파라미터 처리</h1>

<h1>q = <%=request.getParameter("q")%></h1>
<h1>q = ${param.q}</h1>

<!-- 검색어가 hello입니까? -->
<h1>hello? <%=request.getParameter("q")==null?false:request.getParameter("q").equals("hello")%></h1>
<h1>hello? ${param.q == "hello"}</h1>




