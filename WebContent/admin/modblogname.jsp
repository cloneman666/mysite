<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>博客名称修改：</p>
<form name="form1" method="post" action="UserinfoServlet">
 <input type="hidden" name="action" value="modusertitle">
  <label for="title"></label>
  <input type="text" name="title" id="title">
  <input type="submit" name="button" id="button" value="修改">
</form>
<p>${modtitle}</p>
</body>
</html>