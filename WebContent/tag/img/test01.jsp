<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>img 태그</title>
</head>
<body>
	<img alt="멋진 배경" src="http://kstatic.inven.co.kr/upload/2018/02/16/bbs/i16682298371.jpg"
			width="300"height="200">
	<br>
	<img alt="멋진 배경" src="http://kstatic.inven.co.kr/upload/2018/02/16/bbs/i16682298371.jpg"
			width="50%"title="냥이">
	<br>
	<br>
	<!-- 상대경로 : 현재 페이지를 기준으로 계산 -->
	<img src="cat.jpg"width="50%">
	<br>
	<img src="../../image/cat.jpg"width="50%">
	<br>
	<!-- 절대경로 : 루트(root)를 기준으로 계산 -->
	<br>
	<img src="http://localhost:8080/study/image/cat.jpg"width="50%">
	<br>
	<img src="/study/image/cat.jpg"width="50%">
	<br>
	<%
		//요청 정보를 이용하여 root 경로를 계산
		String root = request.getContextPath();	//	/study
	%>
	<img src="<%=root %>/image/cat.jpg"width="50%">
</body>
</html>