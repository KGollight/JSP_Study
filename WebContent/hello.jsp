<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String str = "�������� �����ϴ�";
%>
<html>
	<head>
		<title>Hello JSP!</title>
	</head>
	<body>
		<h1>JSP ������ ����</h1>
		<h2>JSP ������ ����</h2>
		<h3>JSP ������ ����</h3>
		
		<h1><%=str%></h1>
		<h2><%=str%></h2>
		<h3><%=str%></h3>
		
		<h1><%out.println(str);%></h1>
		<h2><%out.println(str);%></h2>
		<h3><%out.println(str);%></h3>
	</body>
</html>


