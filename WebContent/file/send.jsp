<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 파일 전송은 input태그로 한다 -->
<h1>get방식</h1>
<form action="receive.jsp" method="get">
	<input type="text" name="p">
	<br><br>
	<input type="file" name="f">
	<br><br>
	<input type="submit" value="업로드">
</form>

<hr>

<h1>post방식</h1>
<form action="receive.jsp" method="post">
	<input type="text" name="p">
	<br><br>
	<input type="file" name="f">
	<br><br>
	<input type="submit" value="업로드">
</form>

<hr>

<h1>post방식(multipart/form-data)</h1>
<form action="receive.jsp" method="post" enctype="multipart/form-data">
	<input type="text" name="p">
	<br><br>
	<input type="file" name="f">
	<br><br>
	<input type="submit" value="업로드">
</form>