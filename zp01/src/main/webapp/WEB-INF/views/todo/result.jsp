<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${todoDTO }</h1>
	<h2>${result }</h2>
	
	<script type="text/javascript">
	//두번째 방법
	setTimeout(function () {window.location="/todo/list"}, 500);
	</script>
</body>
</html>