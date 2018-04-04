<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.zzc.dao.ArticleDao,com.zzc.valuebean.*" %>
<%@ page import="java.util.*" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<title>博客首页</title>
</head>

<body>
		<header>
		<%if(session.getAttribute("cgxx") == null){ %>
			<div class="login"><a href="login.jsp">登陆</a></div>
			<div class="regist"><a href="regist.jsp">注册</a></div>
			<%}else{ %>
			<div class="tuichu"><a href="admin/LogoutServlet?id=1" target="_top">退出</a></div>
			<div class="who"><a href="admin/index.jsp">${cgxx.title}的博客</a></div>
			<% }%>
			<div id="logo"><a href="index.jsp"></a></div>
			<nav class="topnav" id="topnav">
		  	  <a href="#"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="jsp/about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="#"><span>技术干货</span><span class="en">Life</span></a>
		  	  <a href="jsp/share_knowledge.jsp"><span>资料分享</span><span class="en">Learn</span></a>
		  	  <a href="jsp/diary.jsp"><span>碎言碎语</span><span class="en">Diary</span></a>
		  	  <a href="jsp/photo.jsp"><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="jsp/message_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	</nav>
		</header>
        <div class="banner">
			<section class="box">
			    <ul class="texts">
			      <p>这一个愚顽的人，常在暮色将临时独坐呆问：</p>
			      <p>爱情既是这般美好，何以倒要赞誉它的止步于1对1？</p>
			      <p>为什么它不能推广为1对2、对3、对4……以至n对n，所有的人对所有的人？</p>
			      <p>这时候我就围绕他，像四周的黑暗一样提醒他：对了，这就是理想，但别忘了现实。</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      	&nbsp;&nbsp;&nbsp;-----《病隙碎笔》
			      </p>
			    </ul>
		      <div class="avatar" ><a >赵志超</a></div>
			</section>
		</div>
		<div class="template">
			<div class="box">
			    <h3>
			      <p><span>经典书籍</span>分享</p>
			    </h3>
			    <ul>
			      <li><a><img src="${path }images/book_01.png"></a><span>《深入理解Java虚拟机》</span></li>
			      <li><a><img src="${path }images/book_02.png"></a><span>《Effective Java》</span></li>
			      <li><a><img src="${path }images/book_03.png"></a><span>《深入分析JavaWeb》</span></li>
			      <li><a><img src="${path }images/book_04.png"></a><span>《MySQL5.6从零开始学》</span></li>
			      <li><a><img src="${path }images/book_05.png"></a><span>《Java多线程编程》</span></li>
			      <li><a><img src="${path }images/book_06.png"></a><span>《Java并发编程实战》</span></li>
			    </ul>
			</div>
		</div>
		<div class="art">
			<article>
			  <h2 class="title_tj">
			    <p>文章<span>推荐</span></p>
			  </h2>
			  <div class="bloglist left">
			 	  <%int sum=0; %>
				 <%
			              ArticleDao dao=new ArticleDao();
			            List<ArticleBean> list = dao.findallarticleByreadtimes();
			            request.setAttribute("list", list);
			      %>
			      <c:forEach items="${requestScope.list}" var="wz">     
				    <h3>${wz.title }</h3>
				    <figure><img src="images/<%=(sum%5)+1%>.png"></figure>
				    <%sum=sum+1; %>
				    <ul class="nlist">
			    	<p>${wz.miaoshu }</p>
				    <a href="GetArticleContent?id=${wz.id }" class="readmore">阅读全文>></a>
				    </ul>
				    <p class="dateview"><span>${wz.pubtime }</span>
				    <span>作者：${cgxx.title }</span><span>阅读量：[<a>${wz.readtimes}</a>]</span></p>
				  	</c:forEach>		
			  </div>

			  <aside class="right">
			    <div class="weather">
			    	<iframe width="250" scrolling="no" height="60" frameborder="0" allowtransparency="true" 				                        
			    	  src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1">
                    </iframe>
			    </div>
			    <div class="news">
			    <h3>
			      <p>最新<span>文章</span></p>
			    </h3>
			    <ul class="rank">
			      <li><a href="" target="_blank">Only one Two years(关于高中)</a></li>
			      <li><a href="" target="_blank">两个人的生活(关于爱情)</a></li>
			      <li><a href="/" target="_blank">排球之路</a></li>
			      <li><a href="" target="_blank">学生会个人总结</a></li>
			      <li><a href="/" target="_blank">兴趣与激情</a></li>
			      <li><a href="" target="_blank">Java学习历程之设计模式</a></li>
			      <li><a href="" target="_blank">数据库之MySQL函数汇总</a></li>
			    </ul>
			    <h3 class="ph">
			      <p>点击<span>排行</span></p>
			    </h3>
			    <ul class="paih">
			      <li><a href="" target="_blank">Only one Two years(关于高中)</a></li>
			      <li><a href="" target="_blank">两个人的生活(关于爱情)</a></li>
			      <li><a href="" target="_blank">学生会个人总结</a></li>
			      <li><a href="" target="_blank">Java学习历程之设计模式</a></li>
			      <li><a href="" target="_blank">数据库之MySQL函数汇总</a></li>
			    </ul>
			    <h3 class="links">
			      <p>友情<span>链接</span></p>
			    </h3>
			    <ul class="website">
			      <li><a href="">我的博客</a></li>
			      <li><a href="">张小峰老师个人博客</a></li>
			      <li><a href="">五月的仓颉</a></li>
			      <li><a href="">L-75专栏</a></li>
			    </ul> 
			    </div>  
			    <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
			    	<a class="bds_tsina"></a>
			    	<a class="bds_qzone"></a>
			    	<a class="bds_tqq"></a>
			    	<a class="bds_renren"></a><span class="bds_more"></span>
			    	<a class="shareCount"></a>
			    </div>
			   
			    
			</article>
		</div>
		<footer>
		  	<p>Design by ZZC_Blog&nbsp;&nbsp;姓名:赵志超&nbsp;&nbsp;学号:20140806051007</p>
		</footer>
		<script src="js/index.js"></script>

</body>
</html>