<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page session="false" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript" src="/js/base-v1.js" charset="utf-8"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>解忧杂货店，一切皆有！</title>
<link href="../css/taotao.css" rel="stylesheet"/>
<script type="text/javascript" src="../js/home.js" charset="utf-8"></script>
<script type="text/javascript">
	window.pageConfig={
	compatible:true,
	navId:"home",
	enableArea: true
	};
</script>
<style type="text/css">
#categorys-2013 .mc {
	display: block;
}
#categorys-2013 .mt {
	background: 0
}

#navitems-2013 {
	background: -moz-linear-gradient(top, black, drakblue);
	background: -webkit-gradient(linear, 0 0, 0 100%, from(darkblue),
		to(lightblue));
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="black",
		endColorstr="#E13335");
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr="
		#E64346 ", endColorstr=" #E13335 ")";
	/* padding-left:150px */	
	margin:auto;
}
</style>
</head>
<body>
<%-- <jsp:include page="../commons/header.jsp" /> --%>
<jsp:include page="../commons/shortcut.jsp" />
<div id="o-header-2013">
	<div class="w" id="header-2013">
		<div id="logo-2013" class="ld"><a href="http://www.jieyou.com/" hidefocus="true" clstag="homepage|keycount|home2013|02a"><b></b><img src="../images/taotao-logo.gif" width="100" height="60" alt="皆有"></a></div>
		<!--logo end-->
		<div id="search-2013">
			<div class="i-search ld">
				<ul id="shelper" class="hide">
				</ul>
				<div class="form">
					<input type="text" class="text" accesskey="s" id="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) search('key');">
					<input type="button" value="搜索" class="button" onclick="search('key');return false;" clstag="homepage|keycount|home2013|03a">
				</div>
			</div>
			<div id="hotwords" clstag="homepage|keycount|home2013|03b"></div>
		</div>
		<!--search end-->
		</div>

               <div id="treasure" clstag="homepage|keycount|home2013|08a"></div>
               <div style="padding-left:150px;padding-right:150px;margin:auto">
				<ul id="navitems-2013">
					<li class="fore1" id="nav-home" clstag="homepage|keycount|home2013|07a"><a href="http://www.jieyou.com/">首页</a></li>
					<li class="fore2" id="nav-fashion" clstag="homepage|keycount|home2013|07b"><a href="http://www.jieyou.com/">团购</a></li>
					<li class="fore3" id="nav-chaoshi" clstag="homepage|keycount|home2013|07c"><a href="http://www.jieyou.com/">闪购</a></li>
					<li class="fore4" id="nav-tuan" clstag="homepage|keycount|home2013|07d"><a href="http://www.jieyou.com/" target="_blank">解忧超市</a></li>
					<li class="fore5" id="nav-auction" clstag="homepage|keycount|home2013|07e"><a href="http://www.jieyou.com/">解忧生鲜</a></li>
					<li class="fore6" id="nav-shan" clstag="homepage|keycount|home2013|07f"><a href="http://www.jieyou.com/" target="_blank">解忧图书</a></li>
				</ul>
		</div>
	</div>
</div>

<div style="padding-left:150px;padding-right:150px">
      <c:forEach var="item" items="${list }">
	       <div style="padding:30px; height:150px;width: 27%;float:left;" align="center">
	      		<a href="/item/${item.id }.html"><img src="${item.images[0] }"  style="margin:0 auto;" width=150px height=:150px /></a>
	      		<a href="/item/${item.id }.html"><p>${item.title }</p></a>
	      		<a href="/item/${item.id }.html"><p style="color:red">￥${item.price }</p></a>
	      </div>   
      </c:forEach>     
</div>
		

</body>
