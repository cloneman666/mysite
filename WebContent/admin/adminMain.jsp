<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%
	String se = (String)session.getAttribute("login");
	if(se == null){
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		response.sendRedirect("../index.jsp");
	}
%>
<html>
	<head>
		<title>欢迎页面</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="StyleSheet" type="text/css" href="../css/mystyle.css">
		<base target="contents">
	</head>
	<body>

		<table border="1" width="1214" height="73" bordercolor="#FCD447">
			<tr>
				<td width="74%" valign="top" height="67">
					<font color="#000000">请选择具体菜单中的管理命令，谢谢！</font>
				</td>
			</tr>
		</table>

	</body>
</html>
