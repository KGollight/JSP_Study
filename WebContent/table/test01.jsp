<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>표 만들기</title>
</head>
<body>
	<!-- 표를 만들기 위한 틀 -->
	<table border="1"width="500">
		<!-- 제목 영역 -->
		<thead></thead>
		<!-- 내용 영역 -->
		<tbody>
			<!-- 줄 -->
			<tr>
				<!-- 칸 -->
				<th rowspan="2">첫번째</th>
				<th>두번째</th>
				<th rowspan="2">세번째</th>
			</tr>
			<tr>
				<td>2번째</td>
			</tr>
		</tbody>
		<!-- 하단 영역 -->
		<tfoot></tfoot>
	</table>
</body>
</html>