<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="en">
<head>
<title>login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="/">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<c:choose>
				<c:when test="${empty principal}">

					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="/auth/loginForm">login</a></li>
						<li class="nav-item"><a class="nav-link" href="/auth/joinForm">register</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="navbar-nav">

						<li class="nav-item"><a class="nav-link" href="/user/updateForm">detail</a></li>
						<li class="nav-item"><a class="nav-link" href="/logout">logout</a></li>
						<li class="nav-item"><a class="nav-link" href="/user/deleteForm">delete</a></li>
				<!-- 		<li class="nav-item"><a class="nav-link" href="/admin/sysAdmin">시설관리자 페이지</a></li> -->
						<li class="nav-item"><a class="nav-link" href="/admin">시스템관리자 페이지</a></li>
						<li class="nav-item"><a class="nav-link"
							href="https://kauth.kakao.com/oauth/authorize?client_id=b29649527cd86bf17ae7e595f7ef8f70&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code"">카카오로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="/auth/kakao/logout">카카오 로그아웃</a></li>

					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</nav>
	<br />