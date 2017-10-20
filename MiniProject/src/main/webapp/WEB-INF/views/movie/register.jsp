<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
		
		<section id="contact" class="contact sections">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="contact-details text-center">
						
							
							
							<div class="contact-category">
							
								
								
		<form id="contact_form" action="/movie/register" method="POST" >
		
		<div class="row">
			<label for="name">Title:</label><br>
			<input type='text' class="input" name='title'  size="30"><br>
		</div>
		<div class="row">
		
			<!-- 텍스트 에어리어 양식 -->
			<!-- <label for="message">Your message:</label><br>
			<textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br> -->
			<label for="name">Writer:</label><br>
			<input type='text' class="input" name='writer'   size="30"><br>
<br><input  TYPE="IMAGE" src="/resources/js/assets/images/check.png" 
name="Submit" value="reg"  align="absmiddle"  class = "pen">
		<div class="pen">
<a href="/movie/list"><img src="/resources/js/assets/images/hom.png"></a>
</div> 
		
		</div>
		</form>
								
								<!-- 
<form action="/movie/register" method='post'>
<input type="text" name="title">
<input type="text" name="writer">

<br><input  TYPE="IMAGE" src="/resources/js/assets/images/check.png" 
name="Submit" value="reg"  align="absmiddle"  class = "pen">


</form>
-->
<form id="fileForm"  enctype="multipart/form-data" method="POST">
<input type="file" id="file" name="file" mutiple>
<button id="subBtn" type="submit">추가</button>

<span class="imgList" id="imgList" >

</span>

<div  class="imgList"  placeholder="DropImg...." width="50em;" height="50em;"></div>
</form>
								  
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


<script>

$(document).ready(function(){

	
	
	
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
	 
		
			
			$("#contact").on("dragenter dragover",function(e){
				
				e.preventDefault();
				
			});
			$("#contact").on("drop",function(e){
				
				e.preventDefault();
				
				var files = e.originalEvent.dataTransfer.files;
				
				var file = files[0];
				
				var formData = new FormData();
				
				formData.append("file", $("#file")[0].files[0]);
				
				console.log(file);
				console.log(files);
				
				
				$(".imgList").html("<li>"/* +file.name+"</li><input type="'file'" id="'file'" name="'file'" >" */);
				
			/* 	$.ajax({
					  url:'/upload/new',
					  data: file,
					  dataType:'json',
					  processData: false,
					  contentType: false,
					  type: 'POST',
					  success: function(file){
						
				 		  
						console.log(data); 
						

						
					  } 
				});*/
			});
			
	
	 
	 
});


</script>




</body>
</html>