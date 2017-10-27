<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>web</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<link rel="stylesheet" href="/resources/js/assets/css/bootstrap.min.css">
<!--        <link rel="stylesheet" href="/resources/js/assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="/resources/js/assets/css/plugins.css" />
<link rel="stylesheet"
	href="/resources/js/assets/css/magnific-popup.css">

<link rel="stylesheet" href="/resources/js/assets/css/nexa-web-font.css" />
<link rel="stylesheet"
	href="/resources/js/assets/css/opensans-web-font.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="/resources/js/assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="/resources/js/assets/css/responsive.css" />

<script
	src="/resources/js/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>

<div class='preloader'><div class='loaded'>&nbsp;</div></div>


	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->


		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="/movie/list">Home</a></li>
				<li><a href="/movie/logout">logout</a></li>
				<li><a href="#about"></a></li>
				<li><a href="#portfolio"></a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!--Home page style-->
	<header id="home" class="home">
	<div class="overlay sections">
		<div class="container">

			<div class="row"></div>
		</div>
	</div>
	</header>

	<!-- Sections -->



	<!-- Sections -->


	<section id="contact" class="contact sections">
	
			<div class="col-md-6 col-md-offset-3">
				<div class="contact-details text-center">


					<div class="bg-faded p-4 my-4 listpoint">

						<!-- 리스트 들어가는곳 -->



						<div id="mainWrapper">

							<ul>
								<!-- 게시판 제목 -->
								<li></li>

								<!-- 게시판 목록  -->

								<h7 class="h7">Video clip List</h7>
								<%-- <li>
									<ul id="ulTable">
										<li>
											<ul id="sortTable">
												<li id="No">No</li>
												<li id="Title">Title</li>
												<li id="Date">Date</li>
												<li id="User">User</li>
												<li id="Views">Views</li>
											</ul>
										</li>

										<!-- 게시물이 출력될 영역 -->

										<c:forEach items="${list}" var="movie">
											<li>
												<ul>
													<li>${movie.tno }</li>
													<li><a href="/movie/view?tno=${movie.tno } ">${movie.title }</a>[${movie.replycnt }]
													</li>
													<li><fmt:formatDate value="${movie.regdate}"
															pattern="yyyy-MM-dd" /></li>
													<li>${movie.writer }</li>
													<li>${movie.dbhit }</li>
												</ul>


											</li>
										</c:forEach>
										<br>


									</ul>
								</li> --%>
								
								<table>
								  
								  <!-- <thead>
								    <tr id="sortTable">
								      <th id="No" scope="col">No</th>
								      <th id="Title" scope="col">Title</th>
								      <th id="Date" scope="col">Date</th>
								      <th id="User" scope="col">User</th>
								      <th id="Views" scope="col">Views</th>
								    </tr>
								  </thead> -->
								  <tbody class="tablehover">
								  	<tr id="sortTable">
								      <td id="No" scope="col">No</th>
								      <td id="Title" scope="col">Title</th>
								      <td id="Date" scope="col">Date</th>
								      <td id="User" scope="col">User</th>
								      <td id="Views" scope="col">Views</th>
								    </tr>
								    
								    <c:forEach items="${list}" var="movie">
								    <tr>
											
								      <td data-label="No">${movie.tno }</td>
								      <td data-label="Title"><a href="/movie/view?tno=${movie.tno } ">${movie.title }</a>[${movie.replycnt }]</td>
								      <td data-label="Date"><fmt:formatDate value="${movie.regdate}"
															pattern="yyyy-MM-dd" /></td>
								      <td data-label="User">${movie.writer }</td>
								      <td data-label="Views">${movie.dbhit }</td>
								    </tr>
										</c:forEach>
								    
								  </tbody>
								</table>
							</ul>




						</div>


						<div class="container">
							<form id="searchForm">
								<div class="row">

									

									<div class="col-xs-8 col-xs-offset-2">
										<div class="input-group">
										
										
											<div class="input-group-btn search-panel">

												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span id="search_concept">${criteria.searchType }</span> <span
														class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li value="title">title</li><br>
													<li value="writer">writer</li><br>
													<li value="all">all</li>
													
												</ul>
											</div>
											<form method="get" id="searchForm">
												<input type="hidden" name="page" value="${criteria.page }"
													id="page_param"> <input type="hidden"
													name="searchType" value="${criteria.searchType }"
													id="searchType"> <input type="hidden"
													name="searchSort" value="${criteria.searchSort }"
													id="searchSort"> <input type="hidden"
													name="sortName" value="${criteria.sortName }" id="sortName">
												<input type="text" class="form-control" name="keyword"
													value="${criteria.keyword }" placeholder="Search term...">
												<span class="input-group-btn">
													<button id="subBtn" class="btn btn-default" type="submit">
														<span class="glyphicon glyphicon-search"></span>
													</button>
													<button id="writeBtn" class="btn btn-default" type="button">
														<a href="/movie/register">write</a>
													</button>
												</span>

											</form>


										<!-- <div class="pen">
											<a href="/movie/register"><img
											src="/resources/js/assets/images/check.png"></a>
										</div> -->
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
						<input type='hidden' name='page' value="${criteria.page }">
						<input type='hidden' name='tno'>

					</form>



				</div>

			</div>
		

	</section>

	<!--Footer-->


	<footer id="footer" class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="copyright text-center">
					<p>
						Made with <i class="fa fa-heart"></i> by <a target="_blank"
							href="http://bootstrapthemes.co"> Bootstrap Themes </a>2016. All
						rights reserved.
					</p>
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




	<div></div>


	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
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
		  /* self.location="/movie/list?page="+pageNum; */
		  
		  $("#page_param").val(pageNum);
		  
		  $("#searchForm").submit();
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
	  
	  $("#sortTable").on("click","td", function (e){
		  
		  var $this = $(this);
		  
		  var sortName = $(this).attr("id");
		  
		  console.log(sortName);
		  
		  var searchSort = $("#searchSort").val(); 
		  
		  
		  $("#searchSort").val("asc");
		  
		  $("#sortName").val(sortName);
		  
		 
		  
		  if(searchSort === "desc"){
			  $("#searchSort").val("asc");
		  }
		  
		  else if (searchSort === "asc"){
			  $("#searchSort").val("desc");
		  }
		
		  console.log(searchSort);
		  
		  
		  $("#searchForm").submit();  
	  });
		
	  $("#subBtn").on("click", function (e) {
		  e.preventDefault();
		  
		  $("#page_param").val("1");
		  
		  $("#searchForm").submit();
		
	});
	
		  
	  

});



</script>




</body>
</html>