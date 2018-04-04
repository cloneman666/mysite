<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String se = (String)session.getAttribute("login");
	if(se == null){
		//request.getRequestDispatcher("/index.jsp").forward(request, response);
		response.sendRedirect("../index.jsp");
	}
%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" content="">
		<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
		<meta name="ProgId" content="FrontPage.Editor.Document">
		<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
		<title>博客管理页面</title>
	</head>

	<frameset framespacing="0" border="0" rows="30,*" frameborder="0">
		<frame name="banner" scrolling="no" noresize target="contents" src="adminTop.jsp">
		<frameset cols="220,*">
			<frame name="contents" target="main"  src="adminLeft.jsp">
			<frame name="main" src="adminMain.jsp">
		</frameset>
		<noframes>
			<body>

				<p>
					您的浏览器不支持框架
				</p>

			</body>
		</noframes>
	</frameset>

</html>

