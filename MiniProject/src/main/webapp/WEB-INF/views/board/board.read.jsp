<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- Page Content -->
<div class="container">
	<!-- 글 조회 -->
	<h1 class="my-4">조회</h1>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<form action="" id="submitFrm">
						<div class="form-group">
							<label for="title">제목</label> 
							<div class="form-control" id="title" style="height:38px;"></div>
						</div>
						<div class="form-group">
							<label for="author">작성자</label> 
							<input class="form-control" name="author" id="author" type="text" disabled>
						</div>
						<div class="form-group">
							<label for="editor">내용</label>
							<textarea class="form-control" name="editor" id="editor" style="width: 100%; height:400px" disabled></textarea>
						</div>
						<input type="hidden" id="tno" name="tno" />
						<div class="btn-group pull-right" role="group" aria-label="...">
							<button type="button" class="btn btn-default" onclick="Common.goUrl('/board/write');">글쓰기</button>
							<button type="button" class="btn btn-default" id="updateBtn" >수정</button>
							<button type="button" class="btn btn-default" id="deleteBtn">삭제</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	<!-- 의견 영역 -->
	<h1 class="my-4">의견</h1>
	<hr class="read1"/>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<!-- 의견등록시 그려지는 영역 -->
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon col-md-2">작성자</div>
							<div class="form-control col-md-8">내용</div>
							<!-- 수정, 삭제는 본인만 가능하도록 -->
							<div class="form-control col-md-1">
								<span class="fa fa-eraser" aria-hidden="true">수정</span>
							</div>
							<div class="form-control col-md-1">
								<span aria-hidden="true">X 삭제</span>
							</div>
						</div>					
					</div>
					<!-- 의견 작성 영역 -->
					<form action="" id="opnFrm">
						<div class="form-group">
							<textarea class="form-control" name="opinion" id="opinion" rows="3" placeholder="의견입력">
							</textarea>
						</div>
						<div class="btn-group pull-right" role="group" aria-label="...">
							<button type="button" class="btn btn-default" id="updateBtn" >등록</button>
							<button type="button" class="btn btn-default" id="deleteBtn">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	
});
</script>