<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <form action="/movie/modify" method="post">
 <div>
 Tno <input type='text' name='tno' readonly="readonly" value="${view.tno }">
 </div>
 <div>
 Title <input type='text' name='title'  value="${view.title }">
 </div>
 <div>
 Writer <input type='text' name='writer' value="${view.writer }">
 </div>
 <input type="submit" value="modify">
</form> 


 <form action="/movie/remove" method="post">
 <input type="hidden" name="tno" value="${view.tno }">
<input type="submit" value="remove">
</form>

<form action="/movie/list">
<input type="submit" value="list">
</form>
 
<%--  <input type="hidden" name="tno" value="${view.tno }">
 <input type="hidden" name="title" value="$(#title)">
 <input type="hidden" name="writer" value="${view.writer }">
 --%>


</body>
</html>