<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/table.css">
</head>
<body>
	<header>
		<!-- 지시자를 사용하지 않고 include 하는 방법 -->
		<jsp:include page="/WEB-INF/views/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<a href="${ pageContext.request.contextPath }/board">게시판</a><br>
		<c:if test="${ empty logVO }">
			<a href="${ pageContext.request.contextPath }/login">로그인</a>
		</c:if>
		<c:if test="${ not empty logVO }">
			<a href="${ pageContext.request.contextPath }/logout">로그아웃</a>		
		</c:if>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
</body>
</html>
