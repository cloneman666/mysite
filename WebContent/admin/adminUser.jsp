<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%
	String se = (String)session.getAttribute("login");
	if(se == null){
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		response.sendRedirect("../index.jsp");
	}
%>
<script type="text/javascript">
function chk(id){
	if(confirm("确认删除吗？")==true){
    window.location.href="UserinfoServlet?action=deluserinfo&id=" + id ;
	}
	

}

function jc(){
	if(document.form1.keyword.value==""){
		alter("请输入要搜索的内容！");
		}else{
			document.form1.submit();
			}
	

}

</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理页面</title>
</head>
<body>

<table border="1" width="900" height="51" bordercolor="#FCD447">
			<tr>
			  <td valign="top" height="14"><font color="#5C7FA7"><b>Blog用户管理</b></font></td>
  </tr>
  <form name="form1" method="post" action="UserinfoServlet?action=sou">
			<tr>
				<td width="74%" valign="top" height="14"><font color="#5C7FA7"><b>查 询 管 理 ：用户名：</b></font>
				   <input name="keyword" type="text" size="15">
		      <input name="按钮" type="button"  value="搜索" onclick="jc()">
		      ${requestScope.list}</td>
			</tr>
 </form>	
			<tr>
				<td width="74%" valign="top" height="13">
					<font color="#5C7FA7">
						<table border="1" width="100%" bordercolor="#7D9EC3" align="center">
							<tr>
								<td width="7%" align="center"><b><font color="#5C7FA7">序列</font></b></td>
								<td width="14%" align="center"><b><font color="#5C7FA7">用户名</font></b></td>
								<td width="21%" align="center"><b><font color="#5C7FA7">密码</font></b></td>
								<td width="17%" align="center"><b><font color="#5C7FA7">博客名</font></b></td>
								<td width="23%" align="center"><b><font color="#5C7FA7">邮件</font></b></td>
								<td width="18%" colspan="2" align="center">
									<b>操作</b>
								</td>
							</tr>
			             
			            <c:forEach items="${requestScope.userinfolist}" var="list" varStatus="vs">
                            <tr>
								<td width="7%" align="center">
									<b><font color="#5C7FA7">${vs.count}</font></b>
								</td>
								<td width="14%" align="center">
									<b><font color="#5C7FA7">${list.username}</font></b>
								</td>
								<td width="21%" align="center">${list.password}</td>
								<td width="17%" align="center">${list.title}</td>
								<td width="23%" align="center">${list.email}</td>
								<td colspan="2" align="center">
								  <input type="button" name="button" id="button" value="编辑" onclick="window.location='adminmoduser.jsp?id=${list.id}'">
							      <input type="button" name="button2" id="button2" value="删除" onclick="chk(' ${list.id}')">
															  <font color="#5C7FA7"> </font></td>
							</tr>
						</c:forEach>
						
						
							${user}
						</table> <b></b></font>
				</td>
			</tr>
			
		</table>
		${del}<br>${requestScope.xiougai2}
</body>
</html>