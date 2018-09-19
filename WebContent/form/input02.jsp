<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>입력창 제어</title>
</head>
<body>
	<div align="center">
		<input type="search"><br><br>
		<input type="search" maxlength="10"><br><br>
		<input type="search" disabled="disabled" value="test"><br><br>
		<input type="search" disabled value="test"><br><br>
		<input type="search" readonly="readonly" value="test"><br><br>
		<input type="search" readonly value="test"><br><br>
	
		<textarea rows="20" cols="50"></textarea><br><br>
		
		<select >
			<option>SKT</option>
			<option>KT</option>
			<option>LG</option>
			<option>알뜰폰</option>
		</select>
	</div>
</body>
</html>