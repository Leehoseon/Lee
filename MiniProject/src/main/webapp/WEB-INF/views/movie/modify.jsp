<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Page Content -->
<div class="container">
	<!-- 글 조회 -->
	<h1 class="my-4">수정</h1>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<form id="contact_form" action="/movie/modify" method="POST" >
						<div class="form-group">
							<label for="title">제목</label> 
							<input class="form-control" id="title" name="title" type="text" value="${view.title }"></input>
						</div>
						<div class="form-group">
							<label for="author">작성자</label> 
							<input class="form-control" id="writer" name="writer" value="${view.writer }" type="text" readonly="readonly" >${view.writer }</input>
						</div>
						<div class="form-group">
							<label for="editor">내용</label>
							<textarea class="form-control" name="content" id="content" style="width: 100%; height:400px" >${view.content }</textarea>
						</div>
						<input type="hidden" id="tno" name="tno" value="${view.tno }" />
						<div class="form-group">
							<div class="form-control" id= "attachList">
		
								<c:forEach items="${attach}" var="attach">
														
									<li data-file="${attach.thumbName }">${attach.thumbName }<div><img id='drgImg' src='/upload/new/${attach.thumbName } '><button class='btn btn-default' id='delBtn'>del</button></div></li>
								</c:forEach>
							</div>
							 <video src="c:/zzz/${view.tno }.mp4" type="video/mp4" width="320" height="240" controls >
							
							</video>
						</div>
						<div class="btn-group pull-right" role="group" aria-label="...">
							<button id="modBtn"  class="btn btn-default" >
								수정완료
							</button>
							<button id="removeBtn"   class="btn btn-default"  >
								삭제
							</button>
							<button name="listBtn" value="list" id="listBtn"  class="btn btn-default" type="button" >
								리스트
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="hidden" id="role" value="${uid.role}">
<input type="hidden" id="uid" value="${uid.uid}">
		
 <form id="removeForm" action="/movie/remove" method="post">
 <input type="hidden" name="tno" value="${view.tno }">
</form>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

<script>
$(function(){
	//전역변수
	var obj = [];              
    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: obj,
        elPlaceHolder: "content",
        sSkinURI: "/resources/editor/SmartEditor2Skin.html",
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
    $("#modBtn").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#submitFrm").submit();
    });
});
</script>

<script>
$(document).ready(function(){
	
	var uid = $("#uid").val();
	
	var writer = $("#writer").val();
	
	console.log(uid);
	console.log(uid);
	
	if(uid != writer){
		
		window.location.href = "/movie/list";
		
	};
	
	function showMlist() {
		
		var uid = $("#role").val();
		
		console.log(uid);
		
		if(uid !=="관리자"){
			
			$("#memberlist").hide();
			
		};
		
	}showMlist();
	
	$("#modBtn").on("click",function (e) {
		
		e.preventDefault();
		
		$("#contact_form").submit();
		
	});
	
	$("#listBtn").on("click", function (e) {
		
		e.preventDefault();
		
		window.location="/movie/list"; 
		
	});
	
	$("#removeBtn").on("click", function (e) {
		
		e.preventDefault();
		
		$("#removeForm").submit();
		
	});
	
	var jbAry = new Array();

	$("#attachList").on("click","li", function (e) {
				
		e.preventDefault();
				
		var $this = $(this);
				
		console.log($this);
				
		var value = $this.attr("data-file");
				
		console.log(value);
				
		var uploadName = "uploadName : " + value;
				
		console.log(uploadName);
				
		$this.remove();
			 	
		$.ajax({
			url: "/upload/remove",
			method: 'DELETE',
			data:JSON.stringify({thumbName:value}),
			dataType: 'json',
			processData: false,
			contentType:'application/json; charset=utf-8',
			success: function(result) {
			console.log("del comple./..")
				            	
			 } 
					
		});

	});
			
	$("#attachList").on("dragenter dragover",function(e){
		
		e.preventDefault();
		
	});

	$("#attachList").on('drop', function (e) {
	      e.preventDefault();
	
	      var files = e.originalEvent.dataTransfer.files;
	      if(files.length < 1)
	           return;
	
	      F_FileMultiUpload(files);
	     
	 });

	function F_FileMultiUpload(files) {
		
		var tno = parseInt("${view.tno}");
		var data = new FormData();
	    data.append('tno',tno); 
			
	    for (var i = 0; i < files.length; i++) {
	        data.append('file', files[i]);
	            
	        console.log(files[i]);
	        console.log(data.tno);
	        console.log(data);
			
		    var url = "/upload/modify";
		  	$.ajax({
		  		
			   	url: url,
			    method: 'post',
			    data: data,
			    dataType: 'json',
			    processData: false,
			    contentType: false,
			    success: function(data) {
			    	var str ="";
			        		 
			        for (var i = 0; i < files.length; i++) {
			        	var dt = data.thumbName;
			            console.log(dt);
			            jbAry.push(dt); 
			            	 
						str ="<li data-file='" + data.uploadName  +"'><div>";
						str += "<img id='drgImg' src='/upload/new/" + data.thumbName + "'>";
						str +="<span>" + data.original + " </span>";
						str +="<button class='btn btn-default' id='delBtn'>del</button>"
						str +="</div></li>";
						
						$("#attachList").append(str);
							
						console.log(str);
							
						var filename = new FormData(); 
							
				        console.log(jbAry);
				        for (var i = 0; i < files.length; i++){
					           		 
					    	var cstr = "<input type='hidden' name='filename' value='"+jbAry[i]+"'>";
					        console.log(cstr);
					        $("#contact_form").append(cstr);
					           	 
				        }
			        }
			    }
			});
	    };
	};
});
</script>
</body>
</html>