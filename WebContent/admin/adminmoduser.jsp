<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*" %>
<%@ page import="com.zzc.dao.UserinfoDao,com.zzc.valuebean.UserInfo" %>
<%
	String se = (String)session.getAttribute("login");
	if(se == null){
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		response.sendRedirect("../index.jsp");
	}
%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
function mod(){
	if(confirm("确认更改吗？")==true){
		document.form1.submit();
	}
	

}
</script>
<html>
<head>
<meta charset="utf-8">
<title>用户信息修改</title>
</head>

<body>
 <%
 						String iid=request.getParameter("id");
			            UserinfoDao dao=new UserinfoDao();
			            List<UserInfo> list = dao.pmoduserinfo(iid);    
			            for(UserInfo tl:list){
			            %>
${xiougai1}
<form name="form1" method="post" action="UserinfoServlet">
  <input type="hidden" name="action" value="moduserinfo">
  <input type="hidden" name="iid" value="<%=tl.getId() %>">
  <table width="692" border="1">
    <tr>
      <td width="134">&nbsp;</td>
      <td width="225">用户注册信息修改</td>
      <td width="311">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3">请填写你的个人信息</td>
    </tr>
    <tr>
      <td>您的用户名</td>
      <td colspan="2"><label for="username"></label>
      <input name="username" type="text" id="username" value="<%=tl.getUsername()%>">
      用户名不能为空,应为字母、数字、下划线</td>
    </tr>
    <tr>
      <td>您的密码</td>
      <td colspan="2"><label for="password"></label>
      <input type="password" name="password" id="password" value="<%=tl.getPassword() %>">
      密码应为6字母、数字、特殊字符</td>
    </tr>
    <tr>
      <td>重复输入密码</td>
      <td colspan="2"><label for="secondpassword"></label>
      <input type="password" name="secondpassword" id="secondpassword" value="<%=tl.getPassword() %>"></td>
    </tr>
    <tr>
      <td colspan="3">请输入您的博客信息</td>
    </tr>
    <tr>
      <td>您的博客标题</td>
      <td colspan="2"><label for="title"></label>
      <input type="text" name="title" id="title" value="<%=tl.getTitle() %>">
      给您的博客起个好听的名字</td>
    </tr>
    <tr>
      <td>电子邮件地址</td>
      <td colspan="2"><label for="email"></label>
      <input type="text" name="email" id="email" value="<%=tl.getEmail() %>">
      请按照电子邮件地址的格式填写</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="2"><label for="email"></label>
      <input type="button" name="button" id="button" value="更改" onclick="mod()"></td>
    </tr>
  </table>
</form>
						<%
			            		}
							%> 
</body>
</html>