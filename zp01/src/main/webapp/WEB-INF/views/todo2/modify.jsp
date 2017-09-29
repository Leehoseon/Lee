<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	${cri.page}

	<form id="form1" action="/todo2/modify" method="post">

		<input type='hidden' name='page' value='${cri.page}'> <label>TNO
		</label><input type='text' name='tno' value="${todo.tno }" readonly="readonly">
		<label>Title</label><input type='text' name='title'
			value="${todo.title }"> <label>Writer</label><input
			type='text' name='writer' value="${todo.writer}">


		<button class='btn' data-oper='r'>Remove</button>
		<button class='btn' data-oper='m'>Modify</button>
		<button class='btn' data-oper='l'>List</button>
	</form>

	<form class='f1' method="get">
		<input type='hidden' name='page' value='${cri.page}'>
		 <input type='hidden' name='tno' value='${todo.tno}'>

	</form>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>



	<script>
		$(document).ready(function() {

			var form = $(".f1");

			$(".btn").click(function(e) {
				
				
				e.preventDefault();

				
				var $this = $(this);
				var oper = $this.attr("data-oper");
				
				
				
				if (oper === 'r') {
					form.attr("action", "/todo2/remove")
					form.attr("method", "post");
				} else if (oper === 'l') {
					form.attr("action", "/todo2/list")
					form.attr("method", "get");
				} else if (oper === 'm') {
					$("#form1").submit();
					return;

				}
				
				
				form.submit();
				
			});

		});
	</script>



</body>
</html>