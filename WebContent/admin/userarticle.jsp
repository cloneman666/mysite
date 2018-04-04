<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function del(id){
	if(confirm("确认删除吗？")==true){
    window.location.href="ArticleServlet?action=del&id=" + id ;
	}
}
function mod(id){
	window.location.href="ArticleServlet?action=pmod&id="+ id;
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<form action="" method="post">
		  
		  <table width="100%">
	        <tr>
	          <td height="19" align="left">文章列表</td>
	          <td width="8%" align="right"><INPUT type="submit" class="inputbtn" name="addButton" value="发表文章" onclick="doSubmit('add')"></td>
	          <td width="8%" align="right"><INPUT type="submit" class="inputbtn" name="delButton" value="删除文章" onclick="return doDeleteSubmit();"></td>
	        </tr>
		  </table>
	      <table width="100%"  border="1" cellspacing="0">
	        <tr align="center">
	          <td width="5%" height="19">选择</td>
	          <td width="27%">文章标题</td>
	          <td width="18%">文章类型</td>
	          <td width="32%">创建日期</td>
	          <td width="18%">操作</td>
	        </tr>
	        
	       <c:forEach items="${requestScope.wenzhang}" var="art" varStatus="vs">
	        <tr align="center">
	        	<td height="18"><INPUT type="checkbox" name="checkedIds" value=""></td>
	          	<td>${art.title }</td>
	        	<td>${vs.count}</td>
	        	<td>${art.pubtime }</td>
	        	<td>
	        		<INPUT type="button" name="button" value="编辑"  onclick="mod('${art.id}')">&nbsp;
	        		<INPUT type="button" name="button" value="删除" onclick="del('${art.id}')" >
	        	</td>
	        </tr>
	       </c:forEach>
	        <tr align="center">
	          	<td colspan="5">${sessionScope.wz}</td>
          	</tr>
	        
	      </table>
	      </form>
		${requestScope.deluserarticle}${requestScope.moduserarticle}
</body>
</html>