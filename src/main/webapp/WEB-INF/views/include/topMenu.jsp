<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1" style="width: 100%" class="topmenu">
	<tr>
		<td rowspan="2" style="widows: 100%">
			<a href="${ pageContext.request.contextPath }">
				<img src="${ pageContext.request.contextPath }/resources/img/logo1.png" style="width: 200px; height: 60px;">
			</a>
		</td>
		<td align="right">[현재 계정 : 
				<c:if test="${ empty logVO }">
					게스트
				</c:if>
				<c:if test="${ not empty logVO }">
				${ logVO.name }
				</c:if>
				]
			</td>
	</tr>
	<tr>
		<td>
			<nav>
				| 
				<c:if test="${ logVO.type eq 'S'}">
				 회원관리 |
				</c:if>
				<a href="${ pageContext.request.contextPath }/board">게시판</a> |
				<c:choose>
				 	<c:when test="${ empty logVO }">
				 		<a href="${ pageContext.request.contextPath }/login">로그인</a> |
						<a href="${ pageContext.request.contextPath }/signUp">회원가입</a> | 		 		
			 		</c:when>
			 		<c:otherwise>
				 		<a href="${ pageContext.request.contextPath }/myPage">마이페이지</a> |
					 	<a href="${ pageContext.request.contextPath }/logout">로그아웃</a> |
				 	</c:otherwise>
			 	</c:choose>
			</nav>
		</td>
	</tr>
</table>