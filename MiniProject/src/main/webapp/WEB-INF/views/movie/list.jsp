<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Page Content -->
<div class="container">
	<h1 class="my-4">목록</h1>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<div class="topArea">
						<div class="searchArea">
							
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
											<form  id="searchForm" >
												<input type="hidden" name="page" value="${criteria.page }"
													id="page_param">
												 <input type="hidden"
													name="searchType" value="${criteria.searchType }"
													id="searchType">
												 <input type="hidden"
													name="searchSort" value="${criteria.searchSort }"
													id="searchSort">
												 <input type="hidden"
													name="sortName" value="${criteria.sortName }" id="sortName">
														 
													
								           		<div class="input-group-btn">
									            	<input type="text" class="form-control" name="keyword"
															value="${criteria.keyword }" placeholder="검색어를 입력하세요.">
									            	<span class="input-group-btn">
									            	</span>
									                <button class="btn btn-primary" type="button" >
									                	<span class="fa fa-search" id="subBtn" aria-hidden="true">검색</span>
									                	
									                </button>
									        	</div>
											</form>	
						        	
					        	</div>
					     	
						</div>
						<div class="btnArea">
					  		
					  		<button type="button" class="pull-right btn btn-primary" onclick="Common.goUrl('/register');">글작성</button>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable">
							<thead>
								<tr id="sortTable">
									  <th id="No" scope="col">No</th>
								      <th id="Title" scope="col">Title</th>
								      <th id="Date" scope="col">Date</th>
								      <th id="User" scope="col">User</th>
								      <th id="Views" scope="col">Views</th>
								</tr>
							</thead>
							<!-- 본문 영역 -->
							<tbody>
								<c:forEach items="${list}" var="movie">
								    <tr>
											
									      <td class="rTno" data-label="No" >${movie.tno }</td>
									      <td  data-label="Title">
									      <a href="/movie/view?tno=${movie.tno } ">${movie.title }</a>
									      [<a class="replyView" value="${movie.tno }">${movie.replycnt }</a>]</td>
									      <td data-label="Date"><fmt:formatDate value="${movie.regdate}"
																pattern="yyyy-MM-dd" /></td>
									      <td data-label="User">${movie.writer }</td>
									      <td data-label="Views">${movie.dbhit }</td>
								    </tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				
				<form id="actionForm" method='get'>
					<input type='hidden' name='page' value="${criteria.page }">
					<input type='hidden' name='tno'>

				</form>
				<input type="hidden" id="uid" value="${uid.role}"> 
				<div class="pageArea1">
					<span><ul class="pageArea"></ul> </span>
				</div>
				<!-- 페이징 영역 -->
				<nav>
				</nav>
				
			</div>
		</div>
	</div>
</div>



 <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

	<script type="text/javascript" src="/resources/js/paging.js"></script>

	
	<script src="/resources/js/jquerycookie.js"></script>  

	<script>


	$(document).ready(function(){
		var actionForm = $("#actionForm");
		
		function showMlist() {
			
			var uid = $("#uid").val();
			
			console.log(uid);
			
			if(uid !=="manager"){
				
				$("#memberlist").hide();
			};
		}showMlist();
		
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
		  
		  $("#sortTable").on("click","th", function (e){
			  
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