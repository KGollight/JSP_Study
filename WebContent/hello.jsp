<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String str = "지옥문이 열립니다";
%>
<html>
	<head>
		<title>Hello JSP!</title>
	</head>
	<body>
		<h1>JSP 페이지 샘플</h1>
		<h2>JSP 페이지 샘플</h2>
		<h3>JSP 페이지 샘플</h3>
		
		<h1><%=str%></h1>
		<h2><%=str%></h2>
		<h3><%=str%></h3>
		
		<h1><%out.println(str);%></h1>
		<h2><%out.println(str);%></h2>
		<h3><%out.println(str);%></h3>
	</body>
</html>


