<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="/resources/js/assets/css/bootstrap.min.css">
        <!--        <link rel="stylesheet" href="/resources/js/assets/css/bootstrap-theme.min.css">-->


        <!--For Plugins external css-->
        <link rel="stylesheet" href="/resources/js/assets/css/plugins.css" />
		<link rel="stylesheet" href="/resources/js/assets/css/magnific-popup.css">
		
        <link rel="stylesheet" href="/resources/js/assets/css/nexa-web-font.css" />
        <link rel="stylesheet" href="/resources/js/assets/css/opensans-web-font.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="/resources/js/assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="/resources/js/assets/css/responsive.css" />

        <script src="/resources/js/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		
		<div class='preloader'><div class='loaded'>&nbsp;</div></div>
		
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
                        <li><a href="#about">About Me</a></li>
                        <li><a href="#portfolio">Portfolio</a></li>
                        <li><a href="#contact">Contact</a></li>
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
        <div id="attachArea" >
        <c:forEach items="${attach}" var="attach">
							
					 <li data-file="${attach.thumbName }">${attach.uploadName }<div><img id='drgImg' src='/upload/new/${attach.thumbName } '></div></li> 
					 
			</c:forEach>
			</div>
		
        
		
		<section id="contact" class="contact sections">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="contact-details text-center">
						
							
							
							<div class="contact-category">
							
								
<!--  <form action="/movie/modify" method="post"> -->
 <div>
 <form id="contact_form" action="/movie/modify" method="POST" >
		<div class="row">
			<label for="name">Tno:</label><br>
			<input type='text' class="input" name='tno' readonly="readonly" value="${view.tno }" size="30"><br>
		</div>
		<div class="row">
			<label for="name">Title:</label><br>
			<input type='text' class="input" name='title'  value="${view.title }" size="30"><br>
		</div>
		<div class="row">
		
			<!-- 텍스트 에어리어 양식 -->
			<!-- <label for="message">Your message:</label><br>
			<textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br> -->
			<label for="name">Writer:</label><br>
			<input type='text' class="input" name='writer'  value="${view.writer }" size="30"><br>
<br><input  TYPE="IMAGE" src="/resources/js/assets/images/check.png" 
name="Submit" value="modify"  align="absmiddle"  class = "pen">
		</div>
		</form>

 </div>



 <form action="/movie/remove" method="post">
 <input type="hidden" name="tno" value="${view.tno }">
<br><input  TYPE="IMAGE" src="/resources/js/assets/images/close.png" 
name="Submit" value="remove"  align="absmiddle"  class = "pen">
</form>


<div class="pen">
<a href="/movie/list"><img src="/resources/js/assets/images/hom.png"></a>
</div>

								  
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
	
	var jbAry = new Array();

$("#attachArea").on("click","li", function (e) {
				
				e.preventDefault();
				
				var $this = $(this);
				
				console.log($this);
				
				var value = $this.text();
				
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
			
$("#contact").on("dragenter dragover",function(e){
	
	e.preventDefault();
	
});

$("#contact").on('drop', function (e) {
      e.preventDefault();
      

      var files = e.originalEvent.dataTransfer.files;
      if(files.length < 1)
           return;

      F_FileMultiUpload(files);
      
     
 });


function F_FileMultiUpload(files) {
	/* parseInt("${view.tno}", 10) */
	 var tno = parseInt("${view.tno}");
	 var tno = parseInt(405);
	  
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
				str +="<button id='delBtn'>del</button>"
				str +="</div></li>";
				
				$("#attachArea").append(str);
				
            	
				
				console.log(str);
				
				var filename = new FormData(); 
				
				/* var str ="<input type='text' name='filename' val='"+data.thumbName+"'>"; */ 
				
				
            	 
            	 
            	 console.log(jbAry);
            	 for (var i = 0; i < files.length; i++){
            		 
            	 
            	 var cstr = "<input type='hidden' name='filename' value='"+jbAry[i]+"'>";
            	 console.log(cstr);
            	 $("#contact_form").append(cstr);
            	 }
            	 
            	 }
            }
         });
     }
}
});
</script>
</body>
</html>