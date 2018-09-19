<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<title>구구단 표</title>
</head>
<body>
	<div align="center">
		<h1><b>구구단 문제</b></h1>
		<hr>
	</div>
	<table border="1" align="center" width="50%">
		<thead></thead>
		<tbody>
			<tr>
				<th>2단</th>
				<th>3단</th>
				<th>4단</th>
				<th>5단</th>
				<th>6단</th>
				<th>7단</th>
				<th>8단</th>
				<th>9단</th>
			</tr>
			<%
				//내용 구구단 채워넣기
				for(int i=1; i<=9; i++){
					//줄 생성
					out.write("<tr align=\"center\">");
					//칸 생성 및 내용
					for(int j=2; j<=9; j++){
						int result = j*i;
						out.write("<td>");
						out.write(j+" x "+i+" = "+result);
						out.write("</td>");
					}
					out.write("</tr>");
				}
			%>
		</tbody>
	</table>
	
	<hr>
	
	<table border="1" align="center" width="50%">
			<thead>
				<tr>
					<%for(int k=2; k <= 9; k++){ %>
						<th><%=k%>단</th>
					<%} %>
				</tr>
			</thead>
			
			<tbody>
				<%for(int i=1; i <= 9; i++){ %>
				<tr>
					<%for(int k=2; k <= 9; k++){ %>
						<td><%=k%> X <%=i%> = <%=k * i%></td>
					<%} %>
				</tr>
				<%} %>
			</tbody>
		</table>
</body>
</html>