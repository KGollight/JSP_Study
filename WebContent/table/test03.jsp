<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<title>������ ǥ</title>
</head>
<body>
	<div align="center">
		<h1><b>������ ����</b></h1>
		<hr>
	</div>
	<table border="1" align="center" width="50%">
		<thead></thead>
		<tbody>
			<tr>
				<th>2��</th>
				<th>3��</th>
				<th>4��</th>
				<th>5��</th>
				<th>6��</th>
				<th>7��</th>
				<th>8��</th>
				<th>9��</th>
			</tr>
			<%
				//���� ������ ä���ֱ�
				for(int i=1; i<=9; i++){
					//�� ����
					out.write("<tr align=\"center\">");
					//ĭ ���� �� ����
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
						<th><%=k%>��</th>
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