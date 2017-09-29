<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  ${cri.page}
  
  <span>${todo.title }</span>
  <span>${todo.writer }</span>
  
  
  <%-- <span><fmt:formatDate value="${todo.regdate }" pattern="yyyy-MM-dd"/></span> --%>
  
  <button class='btn' data-oper='md'>Mod OR Del</button>
  <button class='btn' data-oper='li'>Go List</button>
  
  <form class='f1' method="get" >
    <input type='hidden' name='page' value='${cri.page}'>
    
  </form>
  
  <div>
   <input id="reply" type="reply" name="reply" value="테스트">
   <input id="replyer" type="replyer" name="replyer" value="test">
   <button id="replyBtn">Save</button>
  </div>
  
  <div class="replyDiv">
  	<ul class="replyUL">
  	 
  	</ul>
  </div>
  
  <style>
  
  .hide{display: none;}
  .popup{position: absolute;
   width : 300px;
   height: 300px;
   top:10px;
   left:50%;
   background-color: pink;}
  </style>
  
  <div class="popup hide">
   <input id="delrno" type="text" name="rno">
   <input id="delreply" type="text" name="reply">
   <input id="delreplyer" type="text" name="replyer">
   <button class="popBtn delBtn">삭제</button>
   <button class="popBtn modBtn">수정</button>
   <button class="popBtn cloBtn">닫기</button>
  </div>
  
   <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  
  <script>
  
  function getReplies() {
	  
	  
	  //객체로 뿌리는거랑 제이슨으로 문자열로 뿌리는거랑 뭐가 성능차이가나서...??
	  var str ="";
	  $.getJSON("/reply/view/1",function (arr){
		  
		 for(var i = 0 ; i < arr.length; i ++){
			 
			 str +="<li data-rno='"+ arr[i].rno +"'>"+ arr[i].rno +" " + arr[i].reply + "</li>";		 
		 } 
		 $(".replyUL").html(str);	  
		});
		  
	  }
  
  
    $(".cloBtn").click(function (e) {
	
    	$(".popup").hide("slow") ; 
	
	});
    
	
  
  $(".replyUL").on("click", "li", function (e) {
	
	  var rno = ($(this)).attr("data-rno");
	  
	  $.getJSON("/reply/"+rno,function(replyObj){
		  
		  $(".popup input[name='rno']").val(replyObj.rno);
		  $(".popup input[name='reply']").val(replyObj.reply);
		  $(".popup input[name='replyer']").val(replyObj.replyer);
		  $(".popup").show("slow");
		  
		  
	  });
	  $(".popup").show("slow");
	
});
  
  getReplies();
  
    $(".delBtn").click(function (e) {
    	
    	 
   	  	 $.ajax({
   		 url:"/reply/"+$(".popup input[name='rno']").val(),
   		 contentType : "application/json; charset=utf-8",
   		 type:"DELETE",
   		 success: function (result) {
   			 getReplies();
   		  $(".popup").hide("hide");
   		}
		});s
    });
    
    $(".modBtn").click(function (e) {
    	
    	
    	 var data = {
    			 reply:$(".popup input[name='reply']").val(),
    			 replyer:$(".popup input[name='replyer']").val()};
  	  	 $.ajax({
  		 url:"/reply/"+$(".popup input[name='rno']").val(),
  		 contentType : "application/json; charset=utf-8",
  		 type:"PUT",
  		 data:JSON.stringify(data),
  		 success: function (result) {
  			 getReplies();
  		  $(".popup").hide("hide");
  		}
		});
   });
  
  $("#replyBtn").click(function (e) {
	
	  var data = {reply:$("#reply").val() , replyer:$("#replyer").val(), tno:60 };
	  
	  $.ajax({
		 url:"/reply/new",
		 type:"POST",
		 contentType : "application/json; charset=utf-8",
		 data:JSON.stringify(data),
		 success: function (result) {
			 alert("sucess");
		}
		  
	  });
	
});
  
  </script>
  
  <script>
  $(document).ready(function () {
	
	  var form = $(".f1")
	  
	  $(".btn").click(function (e) {
		
		  var $this = $(this);
		  
		  var oper = $this.attr("data-oper");
		  
		  if(oper === "li"){
			  
			  form.attr("action", "/todo2/list");
			  
		  }
		  
		  else if(oper === "md"){
			  form.append("<input type='hidden' name='tno' value='${todo.tno}'>");
			  form.attr("action","/todo2/modify");
			  
			  
		  }
		  form.submit();
		  
		
	});
	
});
  
  </script>
  
  <!-- <script>
  $(document).ready(function(){
      
      var formObj = $(".f1")
      
      $(".btn").click(function(e){
         
          var $this = $(this);
          
          var oper = $this.attr("data-oper");
          
          if(oper  === 'li'){
             formObj.attr("action","/todo2/list");
          }else if(oper === 'md'){
             formObj.append("<input type='hidden' name='tno' value='${todo.tno}'>"); 
             formObj.attr("action","/todo2/modify"); 
          }
          
          formObj.submit();
      });
      
  });
  </script> -->
  
</body>
</html>