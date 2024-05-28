<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${ board.title } 게시글</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#mainBtn').click(function(){
			location.href = "${ pageContext.request.contextPath }"
		})
	})
</script>
</head>
<body>
	<div align="center">
		<h2>상세 게시글</h2>
		<hr>
		<table border="1" style="width: 80%">
			<tr>
				<th width="25%">번호</th>
				<td>${ board.no }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${ board.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${ board.regDate }</td>
			</tr>
		</table>
		<br>
		<button id="mainBtn">메인페이지</button>
	</div>
</body>
</html>