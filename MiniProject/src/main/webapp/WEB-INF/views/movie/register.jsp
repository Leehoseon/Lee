<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Page Content -->
<div class="container">
	<h1 class="my-4">글 작성</h1>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<form id="contact_form" action="/movie/register" method="POST" >
						<div class="form-group">
							<label for="title">제목</label> 
							<input class="form-control" name="title" id="title" type="text" >
						</div>
						<div class="form-group">
							<label for="author">작성자</label> 
							<input class="form-control" name="writer" id="author" type="text" value="${member.uid }" readonly="readonly" >
						</div>
						<div class="form-group">
							<label for="content">내용</label>
							<textarea class="form-control" name="content" id="content" style="width: 100%; height:500px"></textarea>
						</div>
						<div class="form-group">
			                <label for="file">파일첨부</label>
			                <div  class="filename" style="display: inline;">
			                
			                <input class="form-control" type="file" id="file" name="file"  mutiple="multuple">
							<button class="btn btn-default"  id="subBtn" type="submit">추가</button>
			                </div>
			             </div>  
			             
						<div class="imgList" id="imgList" >
							
						</div>
							
						</form>
						
						<div class="btnArea">
								<button name="Submit" value="reg" id="regBtn"  class="btn btn-default" type="submit" >
									추가
								</button>
								<button name="SubmitList" value="list" id="listBtn"  class="btn btn-default" type="submit" >					
									리스트
								</button>	
						</div>
				</div>
			</div>
		</div>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>
	</div>
</div>

     
	

<!-- <script>
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
</script> -->

<script>


$(document).ready(function(){
	
	
	
	var jbAry = new Array();
	
	
	$("#regBtn").on("click",function (e) {
		
		e.preventDefault();
		
		
		$("#contact_form").submit();
		
		
		
	})
	
	
	function registerForm() {
  	  
  	  
	  	$.ajax({
			  url:'/upload/add',
			  data: JSON.stringify({writer:"writer"}),
			  dataType:'json',
			  processData: false,
			  contentType: 'application/json; charset=utf-8',
			  type: 'POST',
			  success: function(data){
				  
			  }
		  });
  	  
		
	};
	
		$("#listBtn").on("click", function (e) {
		
		e.preventDefault();
		
		window.location="/movie/list"; 
		
		
		});
	
	
	
	 $("#subBtn").on("click",function(e){
		
		 e.preventDefault();
		

		var formData = new FormData();
		
		var dd = $("#file")[0].files[0];
		formData.append("file", $("#file")[0].files[0]);
		
		console.log(dd);
		
		
		$.ajax({
			  url:'/upload/new',
			  data: formData,
			  dataType:'json',
			  processData: false,
			  contentType: false,
			  type: 'POST',
			  success: function(data){
				
		 		  
				console.log(data);
				

				var str ="";
				str ="<li data-file='" + data.uploadName  +"'><div>";
				str += "<img id='drgImg' src='/upload/new/" + data.thumbName + "'>";
				str +="<span>" + data.original + " </span>";
				str +="</div></li>";
				$(".imgList").append(str);
				
				 
				console.log(str);
				
			  } 
		});
		
	
	}); 
	 
	 
	 
		
			
			$("#file").on("dragenter dragover",function(e){
				
				e.preventDefault();
				
			});
			
			$("#file").on('drop', function (e) {
		          e.preventDefault();
		          
		          var list = $(".imgList").attr("li");
		          
		          if(list == null ){
		        	  
		        	  registerForm();
		        	  
		          }
		          
		          
		          
		          console.log(list);

		       
		          
		          var files = e.originalEvent.dataTransfer.files;
		          if(files.length < 1)
		               return;

		          F_FileMultiUpload(files);
		     });

		
			function F_FileMultiUpload(files) {
				
					
				     
			         var data = new FormData();
			         for (var i = 0; i < files.length; i++) {
			            data.append('file', files[i]);
			            
			            console.log(files[i]);
			            
			         }
					
			         var url = "/upload/new";
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
							$(".imgList").append(str);
							
							/* for (var i = 0; i < 10; i++) {
								 
								var upl = "<input type='hidden' value='"+data.uploadName[i]+"'> ";
									upl += "<input type='hidden' value='"+data.thumbName[i]+"'> ";
									upl += "<input type='hidden' value='"+data.original[i]+"'> ";
								
									 $("#contact_form").append(upl);
									 console.log(upl);	 
							 } */
							
			            	
							
							console.log(str);
							
							var filename = new FormData(); 
							
							/* var str ="<input type='text' name='filename' val='"+data.thumbName+"'>"; */ 
							
							
			            	 }
			            	 
			            	 console.log(jbAry);
			            	 for (var i = 0; i < files.length; i++){
			            		 
			            	 
			            	 var cstr = "<input type='hidden' name='filename' value='"+jbAry[i]+"'>";
			            	 console.log(cstr);
			            	 }
			            	 $("#filename").append(cstr);
			            }
			         });
			     
			}

			$(".imgList").on("click","li", function (e) {
				
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
			            data:JSON.stringify({uploadName:value}),
			            dataType: 'json',
			            processData: false,
			            contentType:'application/json; charset=utf-8',
			            success: function(result) {
			            	console.log("del comple./..")
			            	
			     
			            } 
			            
			            
				 
			            
				
			});


			});
			
	 
			
});


</script>




</body>
</html>