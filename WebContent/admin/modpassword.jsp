<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>密码更改</title>
</head>

<body>
  
<form name="form1" method="post" action="UserinfoServlet">
 <input type="hidden" name="action" value="moduserpassword">
  <table width="390" border="0">

    <tr>
      <td width="145">原始秘密：</td>
      <td width="235"><label for="mm1"></label>
      <input type="password" name="mm1" id="mm1"></td>
    </tr>
    <tr>
      <td>新 密 码 ：</td>
      <td><label for="mm2"></label>
      <input type="password" name="mm2" id="mm2"></td>
    </tr>
    <tr>
      <td>确认新密码：</td>
      <td><input type="password" name="mm3" id="mm3"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label for="mm3">
        <input type="submit" name="button" id="button" value="确认更改">
      </label></td>
    </tr>
  </table>
  ${modpassword}
</form>
</body>
</html>