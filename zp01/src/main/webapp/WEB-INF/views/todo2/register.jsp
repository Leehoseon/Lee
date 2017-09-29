<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" id="mainForm">
		<label>Title</label><input type="text" name="title">
		<label>Writer</label><input type="text" name="title">
		<input type="submit" value="등록">
	</form>
	
<div class="uploadDiv">
 <form id="uploadForm">
 <input id="uploadFile" type="file" name="file">
 <input type="submit">
 </form>
</div>

<ul class="imgList">

</ul>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  
  
  <script>

  $("#mainForm").on("submit", function (evenet) {
	
	  event.preventDefault();
	  
	  
	  
	  $(".imgList li").each(function (idx) {
		var fileName = $(this).attr("data-file")
		
		var str = "<input type='hidden' name= 'ufile' value=" + fileName + ">";
		console.log(str);
		$("#mainForm").append(str);
		
		
	});
		$("#mainForm").get(0).submit();
	
});
  
  
  $("#uploadForm").on("submit", function (event) {
	
	  event.preventDefault();
	  
	  console.log("click!!!!");

	  
	  var formData = new FormData();
		
	  formData.append("file", $("#uploadFile")[0].files[0]);	
	  
	  $.ajax({
		  url: '/upload/',
		  data: formData,
		  dataType:'Json',
		  processData: false,   //processdata,contenttype false로 꼭줘야 함
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var str = "";
			  
			  str ="<li data-file='"+data.uploadName+"'><div>";
			  str += "<img src='/upload/thumb/" + data.thumbName + "'>";
			  str += "<span>" + data.original + "</span>";
			  str += "</div></li>";
			  $(".imgList").append(str);
			  
			  //문자열이 지저분해서 템플릿 사용
			  
		  }
		});	
		
	});
	 /*  $(".imgList").on("click", "li", function (e) {
			
		    var $this = $(this);
			
		    var src = $this.attr("src");
		    
		    $this.remove(src);
		    
		   
		}); */
  
  
  </script>



</body>
</html>