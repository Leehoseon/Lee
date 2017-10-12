<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="../including/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>${criteria.page}</h1></center>


</body>

<style type="text/css">
body {
	line-height: 2em;
	font-family: serif;
}

ul, li {
	list-style: none;
	text-align: center;
	padding: 0;
	margin: 0;
}

#mainWrapper {
	width: 700px;
	margin: 0 auto; /*가운데 정렬*/
}

#mainWrapper>ul>li:first-child {
	text-align: center;
	font-size: 14pt;
	height: 40px;
	vertical-align: middle;
	line-height: 30px;
}

#ulTable {
	margin-top: 10px;
}

#ulTable>li:first-child>ul>li {
	background-color: rgb(255, 255, 255);
	font-weight: bold;
	font-family: "맑은고딕";
	text-align: center;
}

#ulTable>li>ul {
	clear: both;
	padding: 0px auto;
	position: relative;
	min-width: 40px;
}

#ulTable>li>ul>li {
	float: left;
	font-size: 10pt;
	border-bottom: 1px solid silver;
	vertical-align: baseline;
}

#ulTable>li>ul>li:first-child {
	width: 10%;
} /*No 열 크기*/
#ulTable>li>ul>li:first-child+li {
	width: 45%;
} /*제목 열 크기*/
#ulTable>li>ul>li:first-child+li+li {
	width: 20%;
} /*작성일 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li {
	width: 15%;
} /*작성자 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li+li {
	width: 10%;
} /*조회수 열 크기*/
#divPaging {
	clear: both;
	margin: 0 auto;
	width: 220px;
	height: 50px;
}

#divPaging>div {
	float: left;
	width: 30px;
	margin: 0 auto;
	text-align: center;
}

#liSearchOption {
	clear: both;
}

#liSearchOption>div {
	margin: 0 auto;
	margin-top: 30px;
	width: auto;
	height: 100px;
}

.left {
	text-align: left;
}
</style>

<style>
.popup {
	position: absolute;
	top: 50%;
	left: 25%;
	width: 200px;
	height: 100px;
	margin-left: -50px;
	background-color: fuchsia;
}

.hide {
	display: none;
}

.show {
	display: block;
}
</style>


<div>
<ul class='listUL'>
  <c:forEach var="movie" items="${list}">
   <li><a href='${movie.tno }'>${movie.tno }</a> ${movie.title } </li>
  </c:forEach>

</ul>

<form id="actionForm" method='get'>
  <input type='hidden' name='page' value = "${criteria.page }">
  <input type='hidden' name='tno'>
  
</form>

<form action="/movie/register">
<br><center><input type="submit" value="reg"></center><p>
</form>


<%-- <form method="post" name="regBtn">
<input type="submit" value="register">
<input type="hidden" value="${view.tno }">
<input type="hidden" value="${view.title }">
<input type="hidden" value="${view.writer }">
</form>
  --%>
 


</div>

 <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  
<script>

$(document).ready(function (){

	var actionForm = $("#actionForm");
	
	
	$(".listUL li a").on("click",function(e){
		e.preventDefault();
		
		var tno = $(this).attr("href");
		
		actionForm.attr("action", "/movie/view");
		actionForm.find("input[name='tno']").val(tno);
		
		actionForm.submit(); 
	});

});

</script>


  
  
</body>
</html>