<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="/resources/js/assets/css/bootstrap.min.css">
        <!--        <link rel="stylesheet" href="/resources/js/assets/css/bootstrap-theme.min.css">-->


        <!--For Plugins external css-->
        <link rel="stylesheet" href="/resources/js/assets/css/plugins.css" />
		<link rel="stylesheet" href="/resources/js/assets/css/magnific-popup.css">
		
        <link rel="stylesheet" href="/resources/js/assets/css/nexa-web-font.css" />
        <link rel="stylesheet" href="/resources/js/assets/css/opensans-web-font.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="/resources/js/assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="/resources/js/assets/css/responsive.css" />

        <script src="/resources/js/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		
		<div class='preloader'><div class='loaded'>&nbsp;</div></div>
		
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="/movie/list">Home</a></li>
                        <li><a href="#about"></a></li>
                        <li><a href="#portfolio"></a></li>
                        <li><a href="#contact"></a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <!--Home page style-->
        <header id="home" class="home">
			<div class="overlay sections">
				<div class="container">
					
					<div class="row">
					
		  	</div>
				</div>
			</div>
        </header>

        <!-- Sections -->
        
		
		
		<!-- Sections -->
        
		
		<section id="contact" class="contact sections">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="contact-details text-center">
						
						
						<div class="bg-faded p-4 my-4 listpoint">

	<!-- 리스트 들어가는곳 -->



	<div id="mainWrapper">

		<ul>
			<!-- 게시판 제목 -->
			<li></li>

			<!-- 게시판 목록  -->
	
		<h7>Video clip List</h7>
			<li>
				<ul id="ulTable">
					<li>
						<ul>
							<li>No</li>
							<li>Title</li>
							<li>Date</li>
							<li>User</li>
							<li>Views</li>
						</ul>
					</li>
				
					<!-- 게시물이 출력될 영역 -->

					<c:forEach items="${list}" var="movie">
						<li>
							<ul>
								<li>${movie.tno }</li>
								<li><a
									href="/movie/view?tno=${movie.tno } ">${movie.title }</a>[${movie.replycnt }] </li>
								<li><fmt:formatDate value="${movie.regdate}"
										pattern="yyyy-MM-dd" /></li>
								<li>${movie.writer }</li>
								<li>0</li>
							</ul>
							
								
						</li>
					</c:forEach>
					<br>
					
			
</ul>
</li>
</ul>


		    <%-- <div class="input-group">
                <form action="/movie/list">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Filter by</span> <span class="caret"></span>
                    </button>
                    <ul name="searchType" class="dropdown-menu" role="menu">
                      <li><a href="/movie/list/title?${criteria.title}&">title</a></li>
                      <li><a href="/movie/list/writer?${criteria.writer}&">writer</a></li>
                      <li><a href="/movie/list/tno?${criteria.tno}&">tno</a></li>
                      <li><a href="/movie/list/title?${criteria.title}&writer?${criteria.writer}">title+writer < </a></li>
                      <li class="divider"></li>
                      <li value="title">title</li>
                      <li value="writer">writer</li>
                    </ul>
                    <div class='box-body'>
                    <select name="searchType" class="dropdown-menu" role="menu">
                    <option value='n' <c:out value=""/>>---------</option>
                    <option value='t' <c:out value="title"/>>---------</option>
                    <option value='w' <c:out value="writer"/>>---------</option>
                    
                    </select> 
                    </div>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">
                <input type="hidden" name="page" value="${criteria.page }" id="search_param">
                         
                <input type="text" class="form-control" name="keyword" id="keywordInput" placeholder="Search term...">
               
                    <button id="searchBtn" class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                </form> --%>
                
           		 </div>
           		 
           		 
 <div class="container">
 <form id="searchForm">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Filter by</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li value="title">title</li>
                      <li value="writer">writer</li>
                      <li class="divider"></li>
                      <li><a href="#all">Anything</a></li>
                    </ul>
                </div>
                <form method="get" id = "searchForm">
                <input type="hidden" name="page" value="${criteria.page }" id="page_param">         
                <input type="hidden" name="searchType" value="all" id="searchType">
                <input type="text" class="form-control" name="keyword" placeholder="Search term...">
                <span class="input-group-btn">
                    <button id= "dsds" class="btn btn-default" type="submit" ><span class="glyphicon glyphicon-search"></span></button>
                </span>
                </form>
            </div>
        </div>
	</div>
	</form>
</div>
           		 
   
<div class="pageArea1">
			<span><ul class="pageArea"></ul> </span>	 							
		</div>

</div>


								
								
								<form id="actionForm" method='get'>
								  <input type='hidden' name='page' value = "${criteria.page }">
								  <input type='hidden' name='tno'>
								  
								</form>
								
								
								  
								</div>
							
								<div class="pen">
								<a href="/movie/register"><img src="/resources/js/assets/images/check.png"></a>
								</div>
								
								
				
							
						</div>
					</div>
				</div>
			</div>
		</section>

        <!--Footer-->
        
        
        <footer id="footer" class="footer">
            <div class="container">
            	<div class="row">
            		<div class="col-md-12">
            			<div class="copyright text-center">
            				<p>Made with <i class="fa fa-heart"></i> by <a target="_blank" href="http://bootstrapthemes.co"> Bootstrap Themes </a>2016. All rights reserved.</p>
            			</div>
            		</div>
            	</div>
            </div>
        </footer> 


        <script src="/resources/js/assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="/resources/js/assets/js/vendor/bootstrap.min.js"></script>

        <script src="/resources/js/assets/js/plugins.js"></script>
		<script src="/resources/js/assets/js/jquery.magnific-popup.js"></script>

		 
        <script src="/resources/js/assets/js/main.js"></script>




<div>

 


</div>


 <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

<script type="text/javascript" src="/resources/js/paging.js"></script>



  
<script>


$(document).ready(function(){

	var actionForm = $("#actionForm");
	
	
	$(".listUL li a").on("click",function(e){
		e.preventDefault();
		
		var tno = $(this).attr("href");
		
		actionForm.attr("action", "/movie/view");
		actionForm.find("input[name='tno']").val(tno);
		
		actionForm.submit(); 
	});
	
	var pageStr = makePage(
		      {
		          total:${criteria.total},
		          current:${criteria.page},
		          pageSize:10
		      });
	  
	  console.log("==================");
	  console.log(pageStr);
	  
	 
	  
	  $(".pageArea").html(pageStr);
	  
	  
	  
	  
	  $(".pageArea").on("click","li", function (e) {
		
		  var pageNum = $(this).html();
		  console.log(pageNum);
		  self.location="/movie/list?page="+pageNum;
		  
		
	});
	  
	  
	  $(document).ready(function(e){
		    $('.search-panel .dropdown-menu').find('li').click(function(e) {
				e.preventDefault();
				var param = $(this).attr("value");
				console.log(param);
				var concept = $(this).text();
				$('.search-panel span#search_concept').text(concept);
				$('.input-group #searchType').val(param);
				
		    
			});
		    
		});

});

</script>


  
  
</body>
</html>