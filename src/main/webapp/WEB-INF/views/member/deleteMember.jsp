<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/table.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#delete').click(function(){
			let box = document.getElementById('box')
			if(box.checked){
				location.href = "${ pageContext.request.contextPath }/delete"
			}else{
				alert("동의란에 체크 해주세요.")
			}
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
			<h1>회원 탈퇴</h1>
			<hr>
			<h4>회원 탈퇴를 하실경우 가입하신 정보들은 다시 복구할수없습니다.하지만 작성하신 글들은 삭제되지 않습니다.</h4>
			<input type="checkbox" id="box" />동의합니다.<br>
			<button id="delete" class="btn btn-outline-danger">탈퇴하기</button>
		</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
</body>
</html>