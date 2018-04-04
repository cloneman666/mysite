<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>主菜单</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="StyleSheet" type="text/css" href="images/mystyle.css">
		<base target="main">
	    <style type="text/css">
<!--
.STYLE1 {
	color: #5c7fa7;
	font-weight: bold;
}
.STYLE2 {
	color: #5C7FA7;
	font-weight: bold;
}
-->
        </style>
</head>
	<body>
		<table cellspacing="0" cellpadding="0" width="750" background="images/bk_11.jpg" border="0" style="border-style:none">
			
		</table>

		<table border="1" width="203" bordercolor="#7D9EC3" height="450" style="border-style:none">
			<tr>
				<td width="193" valign="top" height="156">
					<table width="88%" height="189" border="1" bordercolor="#7D9EC3" style="border-style:none">
						<tr>
						
							<td width="100%">
								<img border="0" src="../images/left/user1.jpg" width="180" height="121" alt="">
							</td>
							 
						</tr>
						<tr>
							<td width="100%">
								<p align="center" class="STYLE2">
								${cgxx.title} 的Blog								</p>							</td>
						</tr>
				  </table>
			  </td>
			</tr>
			<tr>
				<td width="193" valign="top" height="73">
					<table border="1" width="141%" bordercolor="#7D9EC3" height="69">
						<tr>
							<td width="100%" height="17">
								<span class="STYLE2">导航栏</span>							</td>
						</tr>
						<tr>
							<td width="100%" height="17">
								<p align="center">
									<a href="personal.jsp" target="main">个人信息</a>
								</p>
							</td>
						</tr>
                        <tr>
							<td width="100%" height="17">
								<p align="center">
									<a href="modpassword.jsp" target="main">修改密码</a>
								</p>
							</td>
						</tr>
                        <tr>
							<td width="100%" height="17">
								<p align="center">
									<a href="modblogname.jsp" target="main">博客名修改</a>
								</p>
							</td>
						</tr>
					</table>
			  </td>
			</tr>
			<tr>
				<td width="193" valign="top" height="67">
					<table border="1" width="140%" bordercolor="#7D9EC3">
						<tr>
							<td width="100%">
								<span class="STYLE2">文章管理</span>							</td>
						</tr>

						<tr>
							<td width="100%">
								<p align="center">
									<a href="ArticleServlet?action=findarticlebyblogid&bid=${cgxx.id}" target="main">所有文章</a>
								</p>
							</td>
						</tr>

	


						<tr>
							<td width="100%">
								<p align="center">
									<a href="newArticle.jsp" target="main">发表文章</a>
								</p>
							</td>
						</tr>

		

					</table>
			  </td>
			</tr>
			<tr>
				<td width="193" valign="top" height="73">
					<table border="1" width="140%" bordercolor="#7D9EC3">
						<tr>
							<td width="100%">
								<span class="STYLE1">文章类别管理</span>							
                             </td>
						</tr>
						<tr>
							<td width="100%">
								<p align="center">
									<a href="" target="main">添加类别</a>
								</p>
							</td>
						</tr>

	


					</table>

			  </td>
			</tr>
            <tr>
				<td width="193" valign="top" height="73">
					<table border="1" width="140%" bordercolor="#7D9EC3">
						<tr>
							<td width="100%">
								<span class="STYLE1">评论管理</span>							
                             </td>
						</tr>
						<tr>
							<td width="100%">
								<p align="center">
									<a href="" target="main">留言</a>
								</p>
							</td>
						</tr>

	


					</table>

			  </td>
			</tr>
			<tr>
				<td width="193" valign="top" align="center" height="17">
					<font color="#7D9EC3">网页计数器:</font>
			  </td>
			</tr>
	</table>
	</body>
</html>
