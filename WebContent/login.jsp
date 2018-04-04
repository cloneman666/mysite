<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<%@ page import="com.zzc.toolbean.*" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/login.css"/>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<title>登录</title>
</head>

<body>
${denglu} 
<form name="form1" method="post" action="LoginServlet">
  <table width="378" border="0">
    <tr>
      <td width="90">账号：</td>
      <td width="272"><label for="username"></label>
      <input name="username" type="text" id="username" ></td>
    </tr>
    <tr>
      <td>密码：</td>
      <td><label for="password"></label>
      <input name="password" type="password" id="password"></td>
    </tr>
    <tr>
      <td height="82">&nbsp;</td>
      <td><input class="denglu" type="submit" name="button" id="button" value="登录">
      <input class="zhuce" type="button" name="button2" id="button2" value="注册" onClick="javascript:window.location.href='regist.jsp'"></td>
    </tr>
  </table>

</form>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>