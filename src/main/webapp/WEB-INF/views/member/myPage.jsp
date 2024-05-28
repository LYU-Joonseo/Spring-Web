<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/table.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#list').click(function(){
			location.href = "${ pageContext.request.contextPath }/mypage/list"
		})
	})
	$(document).ready(function(){
		$('#modify').click(function(){
			location.href = "${ pageContext.request.contextPath }/mypage/modify"
		})
	})
</script>
</head>
<body>
	<header>
		<!-- 지시자를 사용하지 않고 include 하는 방법 -->
		<jsp:include page="/WEB-INF/views/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
		<h1>마이페이지</h1>
		<hr>
		<button id="list" class="btn btn-outline-info">내가 쓴 글 보기</button> 
		<button id="modify" class="btn btn-outline-info">내 정보 수정</button>
	</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
</body>
</html>