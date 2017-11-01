<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- Page Content -->
<div class="container">
	<h1 class="my-4">글 수정</h1>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<form action="" id="submitFrm">
						<div class="form-group">
							<label for="title">제목</label> 
							<input class="form-control" name="title" id="title" type="text">
						</div>
						<div class="form-group">
							<label for="author">작성자</label> 
							<input class="form-control" name="author" id="author" type="text" disabled>
						</div>
						<div class="form-group">
							<label for="content">내용</label>
							<textarea class="form-control" name="content" id="content" style="width: 100%; height:500px"></textarea>
						</div>
						<div class="form-group">
			                <label for="file">파일첨부</label>
			                <input class="form-control" type="file" id="file" name="file" />
			            </div>
						<div class="btnArea">
							<button type="button" class="btn btn-primary" id="submit" >수정</button>
							<button type="button" class="btn btn-default" onclick="Common.goUrl('/board/list');">삭제</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>
	</div>
</div>
<script>
$(function(){
	//전역변수
	var obj = [];              
    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: obj,
        elPlaceHolder: "content",
        sSkinURI: Common.getContextPath() + "/resources/editor/SmartEditor2Skin.html",
        htParams : {
            // 툴바 사용 여부
            bUseToolbar : true,            
            // 입력창 크기 조절바 사용 여부
            bUseVerticalResizer : true,    
            // 모드 탭(Editor | HTML | TEXT) 사용 여부
            bUseModeChanger : false,
        }
    });
    //전송버튼
    $("#submit").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#submitFrm").submit();
    });
});
</script>