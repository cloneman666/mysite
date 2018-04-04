<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.zzc.dao.*,com.zzc.valuebean.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<script type="text/javascript">
function del(id){
	if(confirm("确认删除吗？")==true){
    window.location.href="ArticleServlet?action=admindelarticle&id=" + id ;
	}
	

}
</script>
<html>
	<head>
		<title>Blog文章管理</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body text="#FCD447"">
  <form name="form1" method="post" action="">
		<table border="1" width="707" height="73" bordercolor="#7D9EC3">
			<tr>
				<td width="74%" valign="top" height="14">
					<font color="#5C7FA7"><b>Blog文章管理</b></font>
				</td>
			</tr>
			<tr>
				<td width="74%" valign="top" height="14">
					<font color="#5C7FA7"><b>文章名称</b></font>
                    <label for="keyword"></label>
                    <input name="keyword" type="text" id="keyword" size="15"> 
                    <font color="#5C7FA7"><b>文章分类</b></font>
					<select name="sort" size="1" id="sort">
					  <option value="">所有分类</option>
					 <%
					 ArticleTypeDao type = new ArticleTypeDao();
                     List<ArticleTypeBean> typelist = type.findarticletype();
						  for(int i=0;i<typelist.size();i++){ %>
						  <option value="<%=typelist.get(i).getId() %>">
						  <%=typelist.get(i).getName() %>
						 </option>
						<%  }    %>
			  </select>  <input type="button" name="button3" id="button3" value="搜索"></td>
			</tr>

			<tr>
				<td width="74%" valign="top" height="13">
					<font color="#5C7FA7">
						<table border="1" width="100%" bordercolor="#7D9EC3" align="center">
							<tr>
							  <td width="12%" align="center">序号</td>
								<td width="29%" align="center">
									<b>文章名称</b>
								</td>
								<td width="43%" align="center">
									<b>发表时间</b>
								</td>
								<td width="16%" colspan="2" align="center">
									<b>操作</b>
								</td>
							</tr>
                             <c:forEach items="${requestScope.articlelist}" var="ar" varStatus="a">
                            <tr>
                              <td width="12%" align="center">${a.count}</td>
								<td width="29%" align="center">
									<b>${ar.title}</b>
								</td>
								<td width="43%" align="center">
									<b>${ar.pubtime}</b>
								</td>
								<td width="16%" colspan="2" align="center">
								  <input type="button" name="button" id="button" value="编辑" onclick="javascript:window.location.href='ArticleServlet?action=padminmod&id=${ar.id}'"> 
							      <input type="button" name="button2" id="button2" value="删除" onclick="del('${ar.id}')">
								</td>
							</tr>
							
							</c:forEach>
							
							<tbody id="articleList"></tbody>
						</table> <b></b></font>
				</td>
			</tr>

		</table>
</form>
${del}${adminarticle}
	</body>
</html>
