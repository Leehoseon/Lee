<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>로그인</title>
		<link href='<c:url value="/resources/bootstrap/css/bootstrap.min.css"></c:url>' rel="stylesheet">
		<link href='<c:url value="/resources/font-awesome/css/font-awesome.min.css"></c:url>' rel="stylesheet">
		<link href='<c:url value="/resources/css/sb-admin.css"></c:url>' rel="stylesheet">
		<script src='<c:url value="/resources/bootstrap/js/bootstrap.bundle.min.js"> </c:url>'></script>
		<script src='<c:url value="/resources/jquery/jquery.min.js"> </c:url>'></script>
		<script src='<c:url value="/resources/jquery/jquery.easing.min.js"></c:url>'></script>
		<script>
		
		</script>
	</head>
	
	<body class="bg-dark">
		<div class="container">
			<div class="card card-login mx-auto mt-5">
				<div class="card-header">로그인</div>
				<div class="card-body">
			        <form method="post">
						<div class="form-group">
			            <label for="InputId">아이디</label>
			            <input class="form-control" name="uid" id="InputId" type="text" aria-describedby="idHelp" placeholder="아이디를 입력하세요.">
						</div>
					    <div class="form-group">
				            <label for="InputPassword">비밀번호</label>
				            <input class="form-control" name="upw" id="InputPassword" type="password" placeholder="비밀번호를 입력하세요.">
						</div>
			          	<div class="form-group">
			            	<div class="form-check">
			              		<label class="form-check-label">
			                	<input class="form-check-input" name="auto" type="checkbox"> 비밀번호 저장</label>
			            	</div>
			          	</div>
			          	<button class="btn btn-primary btn-block" type="submit">로그인</button>
			          	
			        </form>
			        <div class="text-center">
			        	<a class="d-block small mt-3" href="/movie/homeregister">회원 가입</a>
			        	<a class="d-block small mt-3" href="/movie/homemodify">회원 수정</a>
			        </div>
		      	</div>
		    </div>
		</div>
	</body>
</html>