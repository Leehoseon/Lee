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
		<title>회원 가입</title>
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
			<div class="card card-register mx-auto mt-5">
				<div class="card-header">회원 가입</div> 
				<div class="card-body">
					<form method="post">
						<div class="form-group">
							<label for="loginId">아이디</label>
						    <input class="form-control" id="loginId" name="uid" type="text" 
						        	placeholder="아이디를 입력하세요">
						</div>
						<div class="form-group">
							<div class="form-row">
								<div class="col-md-6">
									<label for="password">비밀번호</label> 
									<input class="form-control" id="password" name="upw" type="password"
										placeholder="비밀번호 입력">
								</div>
								
							</div>
						</div>
						<div class="form-group">
							<label for="name">이름</label>
						     <input class="form-control" id="name" name="name" type="text" 
						        	placeholder="이름을 입력하세요.">
						</div>
						<div class="form-group">
							<label for="email">이메일</label> 
							<input class="form-control" id="email" type="email" placeholder="이메일 입력">
						</div>
						<button class="btn btn-primary btn-block" type="submit">등록</button>
					</form>
					<div class="text-center">
						<a class="d-block small mt-3" href="/movie/home">로그인 페이지로</a> 
					</div>
				</div>
			</div>
		</div>
	</body>
</html>