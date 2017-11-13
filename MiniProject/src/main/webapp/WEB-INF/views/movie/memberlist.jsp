<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Page Content -->
<div class="container">
	<h1 class="my-4">회원목록</h1>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<div class="topArea">
						<div class="searchArea">
					            <div class="input-group">
							        <div class="input-group-btn search-panel" id="mSearch">
										<button type="button"
											class="btn btn-default dropdown-toggle"
											data-toggle="dropdown">
											<span id="search_concept">${criteria.searchType }</span> <span
												class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li value="Uid">아이디</li><br>
											<li value="Upw">비밀번호</li><br>
											<li value="all">----</li>
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
						</div>
					</div>
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable">
							<thead>
								<tr id="sortTable">
									  <th id="Uid" scope="col">아이디</th>
								      <th id="Upw" scope="col">비밀번호</th>
								      <th id="Date" scope="col">가입날짜</th>
								      <th id="Role" scope="col">권한</th>
								      <th id="Role" scope="col">접속기록</th>
								      <th id="Del" scope="col">삭제</th>
								</tr>
							</thead>
							<!-- 본문 영역 -->
							<tbody id="roleBtnArea">
								<c:forEach items="${list}" var="movie">
								    <tr id="${movie.uid }">
									      <td class="rTno" data-label="Uid" >${movie.uid }</td>
									      <td class="rTno" data-label="Upw" >${movie.upw }</td>
									      <td data-label="Date">${movie.regdate }</td>
										<td class="rTno" data-label="Role" >
											<div class="input-group-btn search-panel" id="rSel">

												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span id="role_concept${movie.uid }">${movie.role }</span> <span
														class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li id="${movie.uid }" value="Role1">관리자</li><br>
													<li id="${movie.uid }" value="Role2">회원</li><br>
												</ul>
											</div>
										</td>
										<td class="rTno" data-label="Uhistory" ><button type="button" class="pull-right btn btn-primary" id="mHisBtn" value="${movie.uid }">접속기록</button></td>
										<td ><button type="button" class="pull-right btn btn-primary" id="mDelBtn" value="${movie.uid }">삭제</button></td>
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
				<form id="historyForm" action="/movie/memberhistory">
					<input type='hidden' name='uid'>
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

<script>

$(document).ready(function(){
	
	var actionForm = $("#actionForm");
	
	function checkRole() {
		
		var uid = $("#uid").val();
		
		console.log(uid);
		
		if(uid !=="관리자"){
			window.location.href = "/movie/list";
		};
		
	}checkRole();
	
	var pageStr = makePage({
		total:${criteria.total},
		current:${criteria.page},
		pageSize:10
	});
	  
	$(".pageArea").html(pageStr);
	  
	$(".pageArea").on("click","li", function (e) {
		
		var pageNum = $(this).html();
		console.log(pageNum);
		  
		$("#page_param").val(pageNum);
		  
		$("#searchForm").submit();
	});
	  
    $('#mSearch').find('li').click(function(e) {
		e.preventDefault();
		var param = $(this).attr("value");
		console.log(param);
		var concept = $(this).text();
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #searchType').val(param);
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
	
	$("#roleBtnArea").on("click","button", function (e) {
		  
		var btn =$(this).attr("id");
		  
		if(btn == "mDelBtn"){
			  
			var uid = $(this).attr("value");
			  
			console.log(uid);
			  
			$.ajax({
				  
				url:'/movie/removemember',
				type: 'DELETE',
				contentType: "application/json; charset=utf-8",
				data:JSON.stringify({uid:uid}),
				dataType: 'text',   
				success: function (result){
					  
				}
			});
			$('#'+uid+'').remove();
		}
		if(btn == "mHisBtn"){
				 
			var uid = $(this).attr("value");
				 
			$("#historyForm").find("input").val(uid);
				 
			$("#historyForm").submit();
		}
	});
	  
	$('#roleBtnArea').on("click","li",function(e) {
		e.preventDefault();
			
		var uid = $(this).attr("id");
			
		console.log(uid);
			
		var concept = $(this).text();
		$('#roleBtnArea .search-panel span#role_concept'+uid+'').text(concept);
		
		$.ajax({
			url:'/movie/rolemember',
			type: 'PUT',
			contentType: "application/json; charset=utf-8",
			data:JSON.stringify({uid:uid,role:concept}),
			dataType: 'text',   
			success: function (result){
					
			}
		});
	});
});
</script>
</body>
</html>