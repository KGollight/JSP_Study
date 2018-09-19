<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>문제</title>
</head>
<body>
	<!-- 
		네이버, 구글, 다음의 이미지를 추력하고 각각의 이미지를 클릭하면 해당 홈페이지로 이동하도록 구현
	 -->
	 <a href="www.naver.com">
	 	<img src="<%=request.getContextPath()%>/image/naver.PNG" width="500" height="200">
	 </a>
	 <br><br>
	 <a href="www.google.com">
	 	<img src="<%=request.getContextPath()%>/image/google.PNG" width="500" height="200">
	 </a>
	 <br><br>
	 <a href="www.daum.net">
	 	<img src="<%=request.getContextPath()%>/image/daum.PNG" width="500" height="200">
	 </a>
	 <br><br>
</body>
</html>