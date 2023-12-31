<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/cLayout/header.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div align="center">

	<!-- 프로필 추가 화면 -->

	<a href="${pageContext.request.contextPath}/profile/careerform">경력사항 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/eduform">학력사항 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/restform">경력 휴식기 입력</a><br>
	<a href="${pageContext.request.contextPath}/profile/certform">자격증 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/inscertform">수료증 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/projform">프로젝트 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/armyform">병역 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/volform">봉사활동 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/thesisform">논문/저자 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/langskillform">외국어 능력 등록</a><br>
	<a href="${pageContext.request.contextPath}/profile/orgform">단체활동 등록</a><br>
</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
