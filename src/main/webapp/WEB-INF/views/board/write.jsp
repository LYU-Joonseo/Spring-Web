<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>새글 등록</title>
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/table.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
		.error{
			color: red;
			font-size: 50%;
			font-weight: bold;
		}
	</style>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<!-- 지시자를 사용하지 않고 include 하는 방법 -->
		<jsp:include page="/WEB-INF/views/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
		<h1>새글 등록폼</h1>
		<hr>
		<form:form method="post" modelAttribute="boardVO">
			<table border="1" style="width: 80%">
				<tr>
					<th width="25%">제목</th>
					<td>
						<form:input path="title" />
						<form:errors path="title" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">작성자</th>
					<td>
						<form:input path="writer" readonly="true"/>
						<form:errors path="writer" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">내용</th>
					<td>
						<form:textarea path="content" rows="7" cols="60"></form:textarea>
					</td>
				</tr>
			</table>
			<br>
			<button type="submit" class="btn btn-outline-primary">등록</button>
		</form:form>
	</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
</body>
</html>