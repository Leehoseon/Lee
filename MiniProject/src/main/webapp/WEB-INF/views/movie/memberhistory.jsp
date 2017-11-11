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
					</div>
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable">
							<thead>
								<tr id="sortTable">
									  <th id="Uid" scope="col">ID</th>
								      <th id="Date" scope="col">LoginDate</th>
								</tr>
							</thead>
							<!-- 본문 영역 -->
							<tbody id="roleBtnArea">
								<c:forEach items="${list}" var="movie">
								    <tr id="${movie.uid }">
									      <td class="rTno" data-label="Uid" >${movie.uid }</td>
									      <td class="rTno" data-label="Udate" >
									      ${movie.regdate }</td>
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
		
		var pageStr = makePage(
			      {
			          total:${criteria.total},
			          current:${criteria.page},
			          pageSize:10
			      });
		  
		  $(".pageArea").html(pageStr);
		  
		  $(".pageArea").on("click","li", function (e) {
			
			  var pageNum = $(this).html();
			  console.log(pageNum);
			  
			  $("#page_param").val(pageNum);
			  
			  $("#actionForm").submit();
		});
});
		
</script>