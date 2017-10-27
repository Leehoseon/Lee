<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
 
		
		
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="/movie/list">Home</a></li>
						<li><a href="/movie/logout">logout</a></li>
						<li><a href="#about"></a></li>
						<li><a href="#portfolio"></a></li>
					</ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <!--Home page style-->
        <header id="home" class="home">
			<div class="overlay sections">
				<div class="container">
					
					<div class="row">
						
					</div>
				</div>
			</div>
        </header>

        <!-- Sections -->
        
		
		
		<!-- Sections -->
        
		
		
		
		<section id="contact" class="contact sections">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="contact-details text-center">
						
							
						
							
							
		<form id="contact_form" action="#" method="POST" enctype="multipart/form-data">
		<div class="row">
			<label for="name">Tno:</label><br>
			<input type='text' class="input" name='tno' readonly="readonly" value="${view.tno }" size="30"><br>
		</div>
		<div class="row">
			<label for="name">Title:</label><br>
			<input type='text' class="input" name='title' readonly="readonly" value="${view.title }" size="30"><br>
		</div>
		<div class="row">
		
			<!-- 텍스트 에어리어 양식 -->
			<!-- <label for="message">Your message:</label><br>
			<textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br> -->
			<label for="name">Writer:</label><br>
			<input type='text' class="input" name='writer' readonly="readonly" value="${view.writer }" size="30"><br>
		</div>
		
	</form>
							
							

<form action="/movie/modify" method="get">
	<input type="hidden" name="tno" value="${view.tno }">
	<input type="hidden" name="title" value="${view.title }">
	<input type="hidden" name="writer" value="${view.writer }">
	<!-- <input  TYPE="IMAGE" src="/resources/js/assets/images/check.png" 
	name="Submit" value="reg"  align="absmiddle"  class = "pen"> -->
	
	<button id="writeBtn" name="Submit" class="btn btn-default" type="submit" value="reg">
		modify
	</button>
	
	<button id="writeBtn" class="btn btn-default" type="button">
		<a href="/movie/list">list</a>
	</button>
	
</form>
<br>

<div class="btn btn-default" id= "attachList">
	
	<c:forEach items="${attach}" var="attach">
							
		<li data-file="${attach.thumbName }">${attach.thumbName }<div><img id='drgImg' src='/upload/new/${attach.thumbName } '></div></li>
	</c:forEach>
</div>
 <video src="c:/zzz/${view.tno }.mp4" type="video/mp4" width="320" height="240" controls >

</video>

<!-- <img id="showBtn1" class="showBtn1" src="/resources/js/assets/images/reply.png" ></img> -->
<button id="showBtn1"  class="btn btn-default" type="button" >
		showReply
	</button>

<div id="hide">
	

	<input type="hidden" id="tno" value="${view.tno }">
	<input type="text" id="reply" value="reply">
	<input type="text" id="replyer" value="${view.writer }" readonly="readonly"> 
	<button id="replyBtn"  class="btn btn-default" type="button" >
		add
	</button>

</br>
<div class='btn btn-default' id="replyUL">

</div>


<!-- <div class="pen"><img id="closeBtn" class="closeBtn" src="/resources/js/assets/images/close.png" ></img>
</div> -->

<br>
<button id="closeBtn"  class="btn btn-default" type="button" >
		closeReply
	</button>


</div>











								  
						
							
							
							
						</div>
					</div>
				</div>
			</div>
			
		</section>


        <!--Footer-->
        <footer id="footer" class="footer">
            <div class="container">
            	<div class="row">
            		<div class="col-md-12">
            			<div class="copyright text-center">
            				<p>Made with <i class="fa fa-heart"></i> by <a target="_blank" href="http://bootstrapthemes.co"> Bootstrap Themes </a>2016. All rights reserved.</p>
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



 <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  

  <script>
  $(document).ready(function(){
	  
	  
	  
	  $("#hide").hide();
	
	  
	  function getReplies(){
	  
		 var tno = ${view.tno };
		  
		 console.log(tno)
		 var str = "";
		 $.getJSON("/reply/list/${view.tno }",function(arr){
		 
			for(var i = 0; i < arr.length; i++){
				str +="<br><li name='rli' data-rno='"+ arr[i].rno +"'>"+arr[i].replyer +"  " + arr[i].reply +"<button data-rno='"+ arr[i].rno +
				"' name='delbtn' class='btn btn-default' type='button'>Delete</button><br>"
				
				/* +"<img data-rno='"+ arr[i].rno +
				"' name='modImg' class='pen' src='/resources/js/assets/images/check.png'></li>" */;
			}
  		console.log(str);
		$("#replyUL").html(str);
		
	 	 });
 	};
  
  $("#showBtn1").click(function(e){
	  
	    getReplies();
	    
	    
	 
		$("#hide").show("slow");
		
		
		
	  });
	  
  
  $("#closeBtn").click(function (e) {
	  
	  $("#hide").hide("slow");
	  
})

 $("#replyBtn").click(function(e){
	  
	  console.log("button clicked");
	 
	  var data = { reply:$("#reply").val() , replyer:$("#replyer").val(), tno:$("#tno").val() };
	  
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
	  /* $("#hide").hide("slow");
	  $("#hide").show("slow"); */
}); 
  
$("#replyUL").on("click","li", function(e){
	 var $this = $(this)
	
	var  cls = $this.attr("name");
    var  rno = $this.attr("data-rno");
    var text = $("#replyUL li").text();
    var tmp = text.split("r ");
    var title = tmp[0];
    var author = tmp[1];
    var children = $(text).children();
    
    console.log(tmp);
    console.log(title);
    console.log(author);
    console.log(children);
    
    
  

    
 $(this).replaceWith($('<li>'+rno+'</li>  <input value="'+title+'" name=text> </input>'+"<button data-rno='"+ rno +
			"' name='modBtn'class='btn btn-default' type='button' >Modify</button></li><br>"));



});
  
  
$("#replyUL").on("click","button", function(e){
	var $this = $(this)
	
	var  cls = $this.attr("name");
	
	
	console.log(cls);
	
	
	 if(cls==="delbtn"){ 
	  var $this = $(this)	
	  
	  var  data = $this.attr("data-rno");
	  
	  var rno = {rno:data}; 
	  console.log(data);
	  console.log(rno);

	 
	 
	  
	  $.ajax({
		  url:'/reply/remove',
		    type: 'DELETE',
		    /* data: rno,  */
		    contentType: "application/json; charset=utf-8",
		    data:JSON.stringify({rno:data}),
		    dataType: 'text',   
		  success: function (result){
			  getReplies();
			  alert("success");
		  }
	  });
	  /* $("#hide").hide("slow");
	  $("#hide").show("slow"); */
	 }
	 else if(cls==="modBtn") {
		 
		 
		 var strr = $("#replyUL").find("input").val();
		 
		 var  data = $this.attr("data-rno");
		 var reply = $("#replyUL").find("input").val();
		 console.log(reply);
		 console.log(data);
		 
		 
		 
		 
		  
		  $.ajax({
			  url:'/reply/put',
			    type: 'PUT',
			    /* data: rno,  */
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
});
	  
  
  </script>
  

</body>
</html>