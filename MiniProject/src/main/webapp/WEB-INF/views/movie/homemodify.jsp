<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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


		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="/movie/list">Home</a></li>
				<li><a href="/movie/logout">logout</a></li>
				<li><a href="#about"></a></li>
				<li><a href="#portfolio"></a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>


	<!--Home page style-->
	<header id="home" class="home">
		<div class="overlay sections">
			<div class="container">

				<div class="row"></div>
			</div>
		</div>
	</header>

	<!-- Sections -->



	<!-- Sections -->


	<section id="contact" class="contact sections">

		<div class="col-md-6 col-md-offset-3">
			<div class="contact-details text-center">


				<div class="bg-faded p-4 my-4 listpoint">

					<form method="post">
						<input type='text' name='uid' value='aaa'> <input
							type='text' name='upw' value='aaa'> <input
							type="checkbox" name="auto"> <input type='submit'>
					</form>
					<a href="/movie/homeregister"><button>register</button></a>

				</div>
			</div>
		</div>
	</section>

</body>
</html>
