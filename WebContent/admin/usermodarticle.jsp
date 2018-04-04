<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.zzc.dao.*,com.zzc.valuebean.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../ueditor/themes/default/css/ueditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../ueditor/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="../ueditor/lang/zh-cn/zh-cn.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
function mod(){
	
	if(document.modarticle.title.value==""){ 
	      alert("请输入文章标题！");
	   }else{
		   if(document.modarticle.miaoshu.value==""){
			   alert("请输入文章的描述！");
		   }else{
			   if(document.modarticle.sortid.value==""){
				   alert("请输入文章的类型！");
			   }else{
				   document.modarticle.submit();
			   }
				
		  		}
	   }
}
</script>
<body>
 <c:forEach items="${requestScope.article}" var="art">
<form action="ArticleServlet" method="post" name="modarticle">
	<input type="hidden" name="action" value="mod">
    <input type="hidden" name="bid" value="${art.id }">
		<table border="1" width="1200" bordercolor="#7D9EC3" style="border-style:none">
			<tr>
				<td width="100%">
					<p align="left">
						<b><font color="#5C7FA7">编辑文章</font></b>
					</p>
				</td>
			</tr>
			<tr>
			
				<td width="100%">
					<table cellspacing="2" cellpadding="0" width="98%" align="center" border="0">
						<tbody>

							<tr>
								<td class="redfont" nowrap width="10%" height="30">
									文章标题
								</td>
								<td>
									<input name="title" class="text" id="title" value="${art.title}"  size="20">
								</td>
							</tr>
							<tr>
								<td class="redfont" height="30">
									文章描述
								</td>
								<td width="90%"><label for="miaoshu"></label>
                              <textarea name="miaoshu" cols="50" id="miaoshu">${art.miaoshu}</textarea></td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td class="redfont" height="30">
									文章分类
								</td>
								<td width="90%">
									<select class="text" id="sortid" name="sortid">
									 <option value="">请选择文章的类型</option>
										<%
										 ArticleTypeDao type = new ArticleTypeDao();
					                     List<ArticleTypeBean> typelist = type.findarticletype();
											  for(int i=0;i<typelist.size();i++){ %>
											  <option value="<%=typelist.get(i).getId() %>">
											  <%=typelist.get(i).getName() %>
											 </option>
									<%  }    %>
									</select>
									&nbsp; <a></a>
								</td>
							</tr>
							<tr>
								<td class="redfont" valign="top" height="30">
									文章内容
								</td>
								<td>
                    
                        
                    <script type="text/plain" id="myEditor" name="content" style="width:1000px;height:350px;">
    						${art.content}
					</script>
						<script>UE.getEditor('myEditor');</script>
</td>
							</tr>
						
						</tbody>

					</table>
				</td>
			</tr>
			<tr>
				<td width="100%" align="center">
					<input  type="button" value="确认更改" onclick="mod()">
					&nbsp;
				</td>
			</tr>
			
		</table>
		</form>
		</c:forEach>
</body>
</html>