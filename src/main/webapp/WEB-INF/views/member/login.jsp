<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/table.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
	<script>
	let checkForm = function(){
		let f = document.loginForm
		let id = f.id
		let pwd = f.password
		
		if(id.value === ''){
			alert('아이디를 입력하세요.')
			id.focus()
			return false
		}else if(pwd.value === ''){
			alert('비밀번호를 입력하세요.')
			pwd.focus()
			return false
		}
		return true
	}
</script>
</head>
<body>
	<header>
		<!-- 지시자를 사용하지 않고 include 하는 방법 -->
		<jsp:include page="/WEB-INF/views/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
		<h1>로그인</h1>
		<hr>
		<form method="post" onsubmit="return checkForm()" name="loginForm">
			<table border="1">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password"></td>
				</tr>
			</table>
			<br>
			<input type="submit" class="btn btn-outline-dark" value="로그인">
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
</body>
</html>