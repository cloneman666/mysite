<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page import="com.zzc.dao.ArticleTypeDao,com.zzc.valuebean.*" %>
<%@ page import="java.util.*" %>
<script type="text/javascript">
function del(id){
	if(confirm("确认删除吗？")==true){
    window.location.href="ArticleTypeServlet?action=deltype&id=" + id ;
	}
	

}

</script>
<html>
	<head>
		<title>Blog文章分类管理</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>


	<body>
	<form name="form1" method="post" action="ArticleTypeServlet">
		<input type="hidden" name="action" value="addtype">
		<table border="1" width="550" height="73" bordercolor="#FCD447">
			<tr>
			  <td height="14" colspan="2" valign="top"><font color="#5C7FA7"><b>Blog文章分类管理</b></font></td>
		  </tr>
			<tr>
			  <td height="14" colspan="2" valign="top"><font color="#5C7FA7"><b>类 型 搜 素 ：</b></font>
			    <label for="keyword"></label>
			    <input name="keyword" type="text" id="keyword" size="18">  <input type="button" name="button3" id="button3" value="搜索"></td>
			</tr>
			<tr>
				<td height="14" colspan="2" valign="top">
					<b><font color="#5C7FA7">新分类名称</font></b><b><font color="#5C7FA7">：</font></b>
					<input style="BORDER-RIGHT: #e78d00 1px solid; BORDER-TOP: #e78d00 1px solid; BORDER-LEFT: #e78d00 1px solid; WIDTH: 125px; BORDER-BOTTOM: #e78d00 1px solid; " name="name">
					<input type="submit" name="button" id="button" value="创建">				    ${type} </td>
			</tr>
			<tr>
			  <td width="57%" height="13" valign="top" align="center"><b>分类名称</b></td>
			  <td width="43%" valign="top" align="center"><b>操作</b></td>
	      </tr>
			<tr>
            </tr>
             
			            <%
			            
			              ArticleTypeDao dao=new ArticleTypeDao();
			            List<ArticleTypeBean> list = dao.findarticletype();    
			            for(ArticleTypeBean tl:list)
			            {%>
            
			<tr>
			  <td width="57%" height="13" valign="top" align="center"><%=tl.getName() %></td>
			  <td width="43%" valign="top" align="center"><input type="button" name="button2" id="button2" value="删除" onclick="del('<%=tl.getId() %>')"></td>
	      </tr>
	      <%} %>
			<tr>
				<td height="13" colspan="2" valign="top">
					<font color="#5C7FA7">
						<table border="1" width="100%" bordercolor="#7D9EC3" align="center">
							<tbody id="sortList"></tbody>
						</table> <b></b></font></td>
			</tr>
			
		</table>
		</form>
        ${typedel }
	</body>
</html>
