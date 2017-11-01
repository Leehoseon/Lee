<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
							<div class="form-control" id="title" name="title" readonly="readonly" value="${view.title }" style="height:38px;">${view.title }</div>
						</div>
						<div class="form-group">
							<label for="author">작성자</label> 
							<input class="form-control" name="author" id="author" type="text" readonly="readonly" value="${view.writer }">
						</div>
						<div class="form-group">
							<label for="editor">내용</label>
							<textarea class="form-control" name="editor" id="editor" style="width: 100%; height:400px" disabled></textarea>
						</div>
						<input type="hidden" id="tno" name="tno" value="${view.tno }" />
						<div class="form-group">
							<div class="btn btn-default" id= "attachList">
		
								<c:forEach items="${attach}" var="attach">
														
									<li data-file="${attach.thumbName }">${attach.thumbName }<div><img id='drgImg' src='/upload/new/${attach.thumbName } '></div></li>
								</c:forEach>
							</div>
							 <video src="c:/zzz/${view.tno }.mp4" type="video/mp4" width="320" height="240" controls >
							
							</video>
						</div>
						<div class="btn-group pull-right" role="group" aria-label="...">
							
							<button id="writeBtn" name="Submit" class="btn btn-default" type="submit" value="reg">
								수정
							</button>
	
							<button id="writeBtn" class="btn btn-default" type="button">
								<a href="/movie/list">리스트</a>
							</button>
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
					<div class="form-group" id="replyArea">
						<!-- <div class="input-group" >
							<div class="input-group-addon col-md-2">작성자</div>
							<div class="form-control col-md-8" id='reply'>내용</div>
							수정, 삭제는 본인만 가능하도록
							<div class="form-control col-md-1">
								<span class="fa fa-eraser" aria-hidden="true" id="modBtn" >수정</span>
							</div>
							<div class="form-control col-md-1">
								<span aria-hidden="true"  id="delbtn">X 삭제</span>
							</div>
						</div> -->					
					</div>
					<!-- 의견 작성 영역 -->
					<form action="" id="opnFrm">
						<div class="form-group">
							<textarea class="form-control" name="opinion" id="replyAdd" rows="3" placeholder="의견입력">
							</textarea>
						</div>
						<div class="btn-group pull-right" role="group" aria-label="...">
							<button type="button" class="btn btn-default" id="replyBtn" >등록</button>
							<button type="button" class="btn btn-default" id="deleteBtn">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

							

<form action="/movie/modify" method="get">
	<input type="hidden" name="tno" value="${view.tno }">
	<input type="hidden" name="title" value="${view.title }">
	<input type="hidden" name="writer" value="${view.writer }">

</form>


<div id="hide">
	<input type="hidden" id="tno" value="${view.tno }">
	<!-- <input type="text" id="reply" value="reply"> -->
	<input type="hidden" id="replyer" value="${view.writer }" readonly="readonly"> 
	<!-- <button id="replyBtn"  class="btn btn-default" type="button" >
		add
	</button> -->

</div>



 <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  

  <script>
  $(document).ready(function(){
	  
	  getReplies()
	  
	  
	  function getReplies(){
	  
		 var tno = ${view.tno };
		  
		 console.log(tno)
		 var str = "";
		 $.getJSON("/reply/list/${view.tno }",function(arr){
		 
			for(var i = 0; i < arr.length; i++){
				/* str +="<br><li name='rli' data-rno='"+ arr[i].rno +"'>"+arr[i].replyer +"  " + arr[i].reply +"<button data-rno='"+ arr[i].rno +
				"' name='delbtn' class='btn btn-default' type='button'>Delete</button><br>" */
				
				str += "<div class='input-group' ><div class='input-group-addon col-md-2' data-rno='"+ arr[i].rno +"'>"+arr[i].replyer +"</div>"+
							"<input class='form-control col-md-8' id='reply' value='" + arr[i].reply +"'></input>"+
							"<div class='form-control col-md-3'>"+
								"<button class='btn btn-default' id='replymodBtn' data-rno='"+ arr[i].rno +"' >수정</button>"+
							
							"<button class='btn btn-default' name='"+arr[i].rno+"' id='replyDelBtn'>삭제</button>"+
						"</div></div>";
			}
			
	  		
	  		
			$("#replyArea").html(str);
			
		 	 });
	 	};
  
  
	 	/* $("#replymodBtn").on("click", function (e) {
	 		
			 var $this  = $(this);
			var tno = $this.attr("data-rno").val();
			
			console.log($this);
			
			var sads = $this.parents("#reply").val();
			
			console.log(sads);
		
			
			
			$(this).find(".form-control col-md-8").replaceWith($('<li>'+rno+'</li>  <input value="'+title+'" name=text> </input>'+"<button data-rno='"+ rno +
			"' name='modBtn'class='btn btn-default' type='button' >Modify</button></li><br>"));

			
			
			
		}); */
	 	
	 	

		 $("#replyBtn").click(function(e){
			  
			  console.log("button clicked");
			 
			  var data = { reply:$("#replyAdd").val() , replyer:$("#replyer").val(), tno:$("#tno").val() };
			  
			  console.log(data);
			  
			  $.ajax({
				  url:'/reply/new',
				  type:'POST',
				  contentType: "application/json; charset=utf-8",
				  data:JSON.stringify(data),
				  success: function (result){
					  alert("success");
					  getReplies();
				  }
			  });
			  
		}); 
  

  
  
		 $("#replyArea").on("click","button", function(e){
			 
			  
			e.preventDefault();
			  
		      var $this = $(this);
		      
			  var btn = $this.attr("id");
		      
			  console.log(btn);
			  
			
			  var asd = $this.closest("#reply");
			 console.log(asd);
			  
			  if(btn =="replyDelBtn"){
				  
				  var  data = $this.attr("name");
				  
				  var rno = {rno:data}; 
				  
				  console.log(data);
				  console.log(rno);
			
				 
				 
				  
				  $.ajax({
					  
					  url:'/reply/remove',
					    type: 'DELETE',
					    contentType: "application/json; charset=utf-8",
					    data:JSON.stringify({rno:data}),
					    dataType: 'text',   
					  success: function (result){
						  getReplies();
						  alert("success");
					  }
				  });
			  
			  }
			  
			  if(btn =="replymodBtn"){
				  
 				  var  data = $this.attr("data-rno");
				  
				  var rno = data;
				 
				  var reply = $("#reply").val();
				  
				  
				
				  
				   $.ajax({
					  url:'/reply/put',
					    type: 'PUT',
					     data: rno,  
					    contentType: "application/json; charset=utf-8",
					    data:JSON.stringify({rno:data,reply:reply}),
					    dataType: 'text',   
					  success: function (result){
						  getReplies();
						  alert("success");
			 			}
				  });  
				  
				  
			  }
			  
		 }); 
	 
 	
	 	/* $("#modOK").on("click", function(e) {
	 		  var $this = $(this);
		      
			  var  data = $this.attr("data-rno");
			  
			  var rno = {rno:data}; 
			  
			  console.log(data);
			  console.log(rno);
	 		
			  
			  
		 }); */
	 
 
});
	  
  
  </script>
  

</body>
</html>