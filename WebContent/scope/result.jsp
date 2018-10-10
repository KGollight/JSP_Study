<%@page import="java.util.Arrays" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//전송되는 데이터를 받아서 투표를 진행
	String[] talent = request.getParameterValues("talent");

	if(talent != null){
		for(int i=0; i<talent.length; i++){
			Integer value = (Integer) pageContext.getAttribute(talent[0]);
			pageContext.setAttribute(talent[0], value==null?1:value+1);
		}
	}
%>

<div align="center">
	<h1><%=Arrays.toString(talent) %></h1>
	
	<h1>투표 결과</h1>
	
</div>