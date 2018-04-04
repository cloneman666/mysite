<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>文章信息</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="StyleSheet" type="text/css" href="images/mystyle.css">
	</head>
	<body>
		<table border="1" width="550" bordercolor="#7D9EC3">
			<tr>
				<td width="100%">
					<p align="center">
						<b><font color="#5C7FA7">文章信息</font></b>
					</p>
				</td>
			</tr>
			<tr>
				<td width="100%">
					<b><font color="#5C7FA7"></font></b>
					<p>
						<b><font color="#5C7FA7"></font></b>
					</p>
					<p>
					</p>
				</td>
			</tr>
			<tr>
				<td width="100%">
					<p align="center">
						<b><font color="#5C7FA7">相关评论</font></b>
					</p>
				</td>
			</tr>

			

			<tr>
				<td width="100%">
					<table border="0" width="100%">
						<tr>
							<td width="100%">
								<b></b>
							</td>
						</tr>
						<tr>
							<td width="100%">
								<p align="right">
									<b></b>
								</p>
							</td>
						</tr>
						<tr>
							<td width="100%">
								<b></b>
							</td>
						</tr>
					</table>
				</td>
			</tr>

	
			<tr>
				<td width="100%">
					<p align="center">
						| <font color="#999999"> <a href="">上页</a></font> | <a href="">下页</a> |
					</p>
				</td>
			</tr>
			<tr>
				<td width="100%">
					<b><font color="#5C7FA7">发表评论：</font></b>
					<form name="regForm" onsubmit="" action="writeFeedback" method="post">
						<table cellspacing="2" cellpadding="0" width="100%" border="0">
							<tbody>
								<td width="12%">
									<label class="redfont" for="user">
										您的昵称
									</label>
								</td>
								<td>
									<input class="text" id="uname" name="uname" datatype="Username">
								</td>
								<tr>
									<td>
										内容
									</td>
									<td>
										<textarea rows="6" name="content" cols="50"></textarea>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										<p align="center">
											<input class="button-submit" type="submit" value="提交" name="Submit">
										</p>
									</td>
								</tr>
							</tbody>
						</table>
					</form>

				</td>
			</tr>
		</table>
	</body>
</html>
