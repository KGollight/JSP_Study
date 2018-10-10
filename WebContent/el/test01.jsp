<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>EL과 표현식(Expression)의 비교</h1>

<h1>1 + 2, <%=1 + 2 %>, ${1 + 2 }</h1>
<h1>4/5, <%=4/5 %>, ${4/5}, ${4 div 5}</h1><!-- 에러로 표시되지만 실행은 잘 된다 -->
<h1>1==1, <%=1==1 %>, ${1==1 }, ${1 eq 1 }</h1>
<h1>자바==자바, <%="자바".equals("자바") %>, ${"자바"=="자바"}, ${"자바" eq "자바"}</h1>