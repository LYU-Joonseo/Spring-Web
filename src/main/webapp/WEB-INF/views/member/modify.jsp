<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/table.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#mainBtn').click(function(){
			location.href = "${ pageContext.request.contextPath }"
		})
	})
	$(document).ready(function(){
		$('#deleteMember').click(function(){
			location.href = "${ pageContext.request.contextPath }/member/deleteMember"
		})
	})
</script>
<style>
	.error{
		color: red;
		font-size: 50%;
		font-weight: bold;
	}
</style>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
		<h1>회원 정보 수정</h1>
		<hr>
		<form:form method="post" modelAttribute="memberVO">
			<table border="1" style="width: 30%">
				<tr>
					<th width="25%">아이디</th>
					<td>
						<form:input path="id" readonly="true"/>
						<form:errors path="id" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">비밀번호</th>
					<td>
						<form:password path="password"/>
						<form:errors path="password" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">이름</th>
					<td>
						<form:input path="name"/>
						<form:errors path="name" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">전화번호</th>
					<td>
						<form:input path="phone"/>
					</td>
				</tr>
			</table>
			<br>
			<button type="submit" class="btn btn-outline-dark">수정</button>
		</form:form>
		<br>
		<button id="deleteMember" class="btn btn-outline-warning">회원 탈퇴</button>
		<button id="mainBtn" class="btn btn-outline-dark">메인화면으로</button>
	</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
</body>
</html>