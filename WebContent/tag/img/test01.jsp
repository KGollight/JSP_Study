<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>img �±�</title>
</head>
<body>
	<img alt="���� ���" src="http://kstatic.inven.co.kr/upload/2018/02/16/bbs/i16682298371.jpg"
			width="300"height="200">
	<br>
	<img alt="���� ���" src="http://kstatic.inven.co.kr/upload/2018/02/16/bbs/i16682298371.jpg"
			width="50%"title="����">
	<br>
	<br>
	<!-- ����� : ���� �������� �������� ��� -->
	<img src="cat.jpg"width="50%">
	<br>
	<img src="../../image/cat.jpg"width="50%">
	<br>
	<!-- ������ : ��Ʈ(root)�� �������� ��� -->
	<br>
	<img src="http://localhost:8080/study/image/cat.jpg"width="50%">
	<br>
	<img src="/study/image/cat.jpg"width="50%">
	<br>
	<%
		//��û ������ �̿��Ͽ� root ��θ� ���
		String root = request.getContextPath();	//	/study
	%>
	<img src="<%=root %>/image/cat.jpg"width="50%">
</body>
</html>