<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/register.css"/>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<title>注册</title>
</head>

<body>
${zhuce} 
<form  name="form1" method="post" action="RegistServlet">
  <table width="692" border="0">
    <tr>
      <td width="134">&nbsp;</td>
      <td width="225"><h1>新用户注册</h1></td>
      <td width="311">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3"><h2>请填写你的个人信息</h2></td>
    </tr>
    <tr>
      <td>您的用户名</td>
      <td colspan="2"><label for="username"></label>
      <input type="text" name="username" id="username">
      用户名不能为空,应为字母、数字、下划线</td>
    </tr>
    <tr>
      <td>您的密码</td>
      <td colspan="2"><label for="password"></label>
      <input type="password" name="password" id="password">
      密码应为6字母、数字、特殊字符</td>
    </tr>
    <tr>
      <td>重复输入密码</td>
      <td colspan="2"><label for="secondpassword"></label>
      <input type="password" name="secondpassword" id="secondpassword"></td>
    </tr>
    <tr>
      <td colspan="3"><h2>请输入您的博客信息</h2></td>
    </tr>
    <tr>
      <td>您的博客标题</td>
      <td colspan="2"><label for="title"></label>
      <input type="text" name="title" id="title">
      给您的博客起个好听的名字</td>
    </tr>
    <tr>
      <td>电子邮件地址</td>
      <td colspan="2"><label for="email"></label>
      <input type="text" name="email" id="email">
      请按照电子邮件地址的格式填写</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="2"><label for="email"></label>
      <input type="submit" name="button" id="button" value="注册"></td>
    </tr>
  </table>
</form>
</body>
</html>