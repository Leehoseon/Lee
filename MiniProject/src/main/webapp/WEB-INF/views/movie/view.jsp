<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
                        <li class="active"><a href="#home">Home</a></li>
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
							
							
							
<%--  <div>
 Tno <input type='text' name='tno' readonly="readonly" value="${view.tno }">
 </div>
 <div>
 Title <input type='text' name='title' readonly="readonly" value="${view.title }">
 </div>
 <div>
 Writer <input type='text' name='writer'readonly="readonly" value="${view.writer }">
 </div> --%>
 
 <video src="c:/zzz/${view.tno }.mp4" type="video/mp4" width="320" height="240" controls >

</video>

<form action="/movie/modify" method="get">
<input type="hidden" name="tno" value="${view.tno }">
<input type="hidden" name="title" value="${view.title }">
<input type="hidden" name="writer" value="${view.writer }">
<br><input  TYPE="IMAGE" src="/resources/js/assets/images/check.png" 
name="Submit" value="reg"  align="absmiddle"  class = "pen">
</form>


<input type="text" id="tno" value="${view.tno }">
<input type="text" id="reply" value="${view.title }">
<input type="text" id="replyer" value="${view.writer }">
<button id="replyBtn" class="replyBtn"></button>



<div class="pen">
<a href="/movie/list"><img src="/resources/js/assets/images/hom.png"></a>
</div>
<button id="replyBtn1" class="replyBtn1"></button>
<div class="replyUL">
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
  
  
  $("#replyBtn1").click(function(e){
	  
	  var tno = $("#tno");
	  
	  console.log()
	  var str = "";
	  $.getJSON("/{tno}",function(arr){
		 
		for(var i = 0; i < arr.length; i++){
			str +="<li data-rno='"+ arr[i].rno +"'>"+arr[i].rno +"  " + arr[i].reply +"</li>";
		}
		$(".replyUL").html(str);
		
	  });
	  
  });

  
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
			  
		  }
	  });
  
}); 
  
  </script>
  

</body>
</html>