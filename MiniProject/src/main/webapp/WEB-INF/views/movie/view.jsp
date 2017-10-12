<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <div>
 Tno <input type='text' name='tno' readonly="readonly" value="${view.tno }">
 </div>
 <div>
 Title <input type='text' name='title' readonly="readonly" value="${view.title }">
 </div>
 <div>
 Writer <input type='text' name='writer'readonly="readonly" value="${view.writer }">
 </div>
 
 <video src="c:/zzz/${view.tno }.mp4" type="video/mp4" width="320" height="240" controls >

</video>

<form action="/movie/modify" method="get">
<input type="hidden" name="tno" value="${view.tno }">
<input type="hidden" name="title" value="${view.title }">
<input type="hidden" name="writer" value="${view.writer }">
<input type="submit" value="modify">
</form>


 <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

</body>
</html>