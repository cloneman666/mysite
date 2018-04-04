<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>博客个人资料</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="StyleSheet" type="text/css" href="images/mystyle.css">
	</head>
	<body>
		<table border="1" width="95%" bordercolor="#7D9EC3">
			<tr>
				<td width="100%">
					<p align="left">
						<b><font color="#5C7FA7">博客个人资料</font></b>
					</p>
				</td>
			</tr>
			<tr>
				<td width="100%">
					<table cellspacing="2" cellpadding="0" width="98%" align="center" border="0">
						<tbody>
							<form method="post" action="saveSelf">
							<tr>
								<td class="redfont" nowrap width="10%" height="30">
									博客标题
								</td>
								<td>
									<input class="text" size="26" name="subject" value="">
								</td>
							</tr>
							<tr>
								<td class="redfont" nowrap width="10%" height="30">
									博客密码
								</td>
								<td>
									<input class="text" size="20" name="psw" value="">
								</td>
							</tr>
							<tr>
								<td class="redfont" nowrap width="10%" height="30">
									确认密码
								</td>
								<td>
									<input class="text" size="20" name="psw2" value="">
								</td>
							</tr>
							<tr>
								<td class="redfont" height="30">
									博客邮件地址
								</td>
								<td width="90%">
									<input class="text" size="20" name="email" value="">
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td width="100%" align="center">
					<input class="button-submit" id="save" type="submit" value="确认修改" name="save">
					&nbsp;

				</td>
			</tr>
		</table>
		</form>
	</body>
</html>
