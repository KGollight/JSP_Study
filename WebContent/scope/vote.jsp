<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div align="center">
	<h1>인기투표</h1>
	<h4>좋아하는 연예인을 선택하세요</h4>
	
	<form action="result.jsp" method="get">
		<hr>
		<input type="checkbox" name="talent" value="한지민">한지민
		<input type="checkbox" name="talent" value="선미">선미
		<input type="checkbox" name="talent" value="고아라">고아라
		<input type="checkbox" name="talent" value="아이린">아이린
		<input type="checkbox" name="talent" value="박보영">박보영
		<hr>
		<input type="submit" value="투표하기">
	</form>
</div>
