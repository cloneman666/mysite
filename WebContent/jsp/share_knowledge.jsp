<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>文章分享</title>
		<link href="../css/knowledge.css" rel="stylesheet" type="text/css">
		<link href="../css/index.css" rel="stylesheet" type="text/css"/>
		<style>
			#ds-recent-visitors .ds-avatar img {
				width: 78px !important;
				height: 78px !important;
			}
			.ds-avatar {
				float: left;
			}
		</style>
	</head>
	<body>
		<header>
		    <div id="logo"><a href="../index.jsp"></a></div>
		    <nav class="topnav" id="topnav">
			  	<a href="../index.jsp"><span>首页</span><span class="en">Home Page</span></a>
			  	<a href="about.jsp"><span>关于我</span><span class="en">About Me</span></a>
			  	<a href="#"><span>技术干货</span><span class="en">Life</span></a>
		  	    <a href="jsp/share_knowledge.jsp"><span>资料分享</span><span class="en">Learn</span></a>
			  	<a href="diary.jsp"><span>碎言碎语</span><span class="en">Doing</span></a>
			  	<a href="#"><span>学无止境</span><span class="en">Learn</span></a>
			  	<a href="#"><span>个人简历</span><span class="en">Information</span></a>
			</nav>
		</header>
		<article class="blogs">
			<h1 class="t_nav"><a href="../index.jsp" class="n1">网站首页</a>
			</h1>
		  	<div class="index_about">
		  		<c:forEach items="${sessionScope.seearticle}" var="see">
			    <h2 class="c_titile">文章名：${see.title}</h2>
			    <p class="box_c">
			    		<span class="d_time">发布时间：${see.pubtime}</span>
			    		<span>编辑：${see.id}</span>
			    </p>
			    <ul class="infos">
			      ${see.content}
			    </ul>
			    </c:forEach>
	  	  </div>
		  <aside class="right"><!-- Baidu Button BEGIN --><script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script> 
		    <script type="text/javascript" id="bdshell_js"></script> 
		    <script type="text/javascript">
			document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
			</script> 
		    <!-- Baidu Button END -->
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
		    </div>
		    <div class="visitors">
		      <h3 class="ph">
				 <p>最近<span>访客：</span></p>
				 <br/>
		      </h3>
		        <ul class="ds-recent-visitors" data-num-items="10">
		        </ul>
				<!--多说js加载开始，一个页面只需要加载一次 -->
				<script type="text/javascript">
				var duoshuoQuery = {short_name:"hlk1135"};
				(function() {
				    var ds = document.createElement('script');
				    ds.type = 'text/javascript';ds.async = true;
				    ds.src = 'http://static.duoshuo.com/embed.js';
				    ds.charset = 'UTF-8';
				    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
				})();
				</script>
				<!--多说js加载结束，一个页面只需要加载一次 -->
		    </div>
		  </aside>
		</article>
		<footer>
		  	<p>Design by ZZC_Blog&nbsp;&nbsp;姓名:赵志超&nbsp;&nbsp;学号:20140806051007</p>
		</footer>
	</body>
</html>