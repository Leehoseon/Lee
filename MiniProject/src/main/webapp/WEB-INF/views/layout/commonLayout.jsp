<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href='<c:url value="/resources/css/modern-business.css"></c:url>' rel="stylesheet">
	<link href='<c:url value="/resources/bootstrap/css/bootstrap.min.css"></c:url>' rel="stylesheet">
	<link href='<c:url value="/resources/bootstrap/css/bootstrap-theme.min.css"></c:url>' rel="stylesheet">
	<link href='<c:url value="/resources/font-awesome/css/font-awesome.min.css"></c:url>' rel="stylesheet">
	<script src='<c:url value="/resources/jquery/jquery.min.js"> </c:url>'></script>
	<script src='<c:url value="/resources/bootstrap/js/bootstrap.bundle.min.js"> </c:url>'></script>
	<script src='<c:url value="/resources/editor/js/HuskyEZCreator.js"> </c:url>'></script>
	<script src='<c:url value="/resources/js/common.js"> </c:url>'></script>
	<title><decorator:title default="project" /></title>
<decorator:head />
</head>
<body id="body">
<!-- menu -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href='<c:url value="/movie/list"></c:url>'>시스템</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        	<span class="navbar-toggler-icon"></span>
        </button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
              		<a id="memberlist" class="nav-link" href='<c:url value="/movie/memberlist"></c:url>'>회원목록</a>
            	</li>
            	<li class="nav-item">
           			<a class="nav-link" href='<c:url value="/movie/list"></c:url>'>목록</a>
            	</li>
            	<li class="nav-item dropdown">
              		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                	Unnecessary
              		</a>
            		<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
		                <a class="dropdown-item" href='<c:url value="/movie/home"></c:url>'>로그인</a>
		                <a class="dropdown-item" href='<c:url value="/movie/homeregister"></c:url>'>회원가입</a>
              		</div>
            	</li>
            	<li class="nav-item">
		        	<a class="nav-link" href='<c:url value="/movie/logout"></c:url>'>
		            <i class="fa fa-fw fa-sign-out"></i>로그아웃</a>
		        </li>
          	</ul>
		</div>
	</div>
</nav>
	
<!-- content -->
<decorator:body></decorator:body>

<!-- FOOTER -->
<footer id="footer" class="py-5 bg-dark" style="width:100%; text-align:center;">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
	</div>
</footer>
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="logoutModalLabel">로그아웃 하시겠습니까?</h4>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">x</span>
            </button>
          </div>
          <div class="modal-body">냉</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
            <a class="btn btn-primary" href='<c:url value="/logout"></c:url>'>로그아웃</a>
          </div>
        </div>
      </div>
    </div>
</body>
</html>