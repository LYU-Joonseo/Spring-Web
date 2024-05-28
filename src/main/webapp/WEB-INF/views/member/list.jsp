<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 글</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/table.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$('#addBtn').click(function(){
			location.href = "${ pageContext.request.contextPath }/board/write"
		})
	})
	$(document).ready(function(){
		$('#mainBtn').click(function(){
			location.href = "${ pageContext.request.contextPath }"
		})
	})
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
			<h1>내가 쓴 게시글</h1>
			<hr>
			<table class="list">
				<tr>
					<th width="5%">번호</th>
					<th>제목</th>
					<th width="21%">작성자</th>
					<th width="25%">등록일</th>
				</tr>
				<c:forEach items="${ list }" var="board">
					<tr>
						<td>${ board.no }</td>
						<td>
							<a href="${ pageContext.request.contextPath }/board/${ board.no }">
								${ board.title }
							</a>
						</td>
						<td>${ board.writer }</td>
						<td>${ board.regDate }</td>
					</tr>
				</c:forEach>
			</table>
			<br>
			<c:if test="${ not empty logVO }">
				<button id="addBtn" class="btn btn-outline-info">새글 등록</button>
			</c:if>
			<br>
			<br>
			<button id="mainBtn" class="btn btn-outline-secondary">메인페이지</button>
		</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %> <!-- 같은 footer 내용을 넣을때 사용하는 지시자 -->
	</footer>
</body>
</html>
