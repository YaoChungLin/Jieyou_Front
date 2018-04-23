<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>${item.title } - 解忧杂货店</title>
	<script>var jdpts = new Object(); jdpts._st = new Date().getTime();</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/css/taotao.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/pshow.css" media="all" />
	<script type="text/javascript">
    	window.pageConfig = {
			compatible: true,
       		product: {
				skuid: ${item.id},
				name: '\u957f\u8679\uff08\u0043\u0048\u0041\u004e\u0047\u0048\u004f\u004e\u0047\uff09\u004c\u0045\u0044\u0034\u0032\u0035\u0033\u0038\u0045\u0053\u0020\u0034\u0032\u82f1\u5bf8\u0020\u7a84\u8fb9\u84dd\u5149\u004c\u0045\u0044\u6db2\u6676\u7535\u89c6\uff08\u9ed1\u8272\uff09',
				skuidkey:'E804B1D153D29E36088A33A134D85EEA',
				href: 'http://item.jd.com/1221882.html',
				src: 'jfs/t304/157/750353441/93159/e4ee9876/54227256N20d4f5ec.jpg',
				cat: [737,794,798],
				brand: 20710,
				nBrand: 20710,
				tips: false,
				type: 1,
				venderId:0,
				shopId:'0',
				TJ:'0',
				specialAttrs:["HYKHSP-0","isHaveYB","isSelfService-0","isWeChatStock-0","isCanUseJQ","isOverseaPurchase-0","YuShou","is7ToReturn-1","isCanVAT"],
				videoPath:'',
				HM:'0'
			}
		};
	</script>
</head>
<body version="140120">
<script type="text/javascript">try{(function(flag){ if(!flag){return;} if(window.location.hash == '#m'){var exp = new Date();exp.setTime(exp.getTime() + 30 * 24 * 60 * 60 * 1000);document.cookie = "pcm=1;expires=" + exp.toGMTString() + ";path=/;domain=jd.com";return;}else{var cook=document.cookie.match(new RegExp("(^| )pcm=([^;]*)(;|$)"));var flag=false;if(cook&&cook.length>2&&unescape(cook[2])=="1"){flag=true;}} var userAgent = navigator.userAgent; if(userAgent){ userAgent = userAgent.toUpperCase();if(userAgent.indexOf("PAD")>-1){return;} var mobilePhoneList = ["IOS","IPHONE","ANDROID","WINDOWS PHONE"];for(var i=0,len=mobilePhoneList.length;i<len;i++){ if(userAgent.indexOf(mobilePhoneList[i])>-1){var url="http://m.jd.com/product/"+pageConfig.product.skuid+".html";if(flag){pageConfig.product.showtouchurl=true;}else{window.location.href = url;}break;}}}})((function(){var json={"6881":3,"1195":3,"10011":3,"6980":3,"12360":3};if(json[pageConfig.product.cat[0]+""]==1||json[pageConfig.product.cat[1]+""]==2||json[pageConfig.product.cat[2]+""]==3){return false;}else{return true;}})());}catch(e){}</script>
<!-- header start -->
<jsp:include page="../commons/header.jsp" />
<!-- header end -->
<div class="w">
	<div id="product-intro" >
		<div id="name">
			<h1>${item.title }</h1>
			<strong>${item.sellPoint}</strong>
		</div><!--name end-->
		<script type='text/javascript'>var warestatus = 1; var eleSkuIdKey =[];</script>
		<div class="clearfix" clstag="shangpin|keycount|product|share">
<script type="text/javascript">pageConfig.product.marketPrice='';</script>
<ul id="summary">
	<li id="summary-price">
		<div class="dt">解忧&nbsp;价：</div>
		<div class="dd">
			<strong class="p-price"  id="jd-price">￥<fmt:formatNumber groupingUsed="false" maxFractionDigits="2" minFractionDigits="2" value="${item.price / 100 }"/> </strong>
			<a id="notice-downp" href="#none" target="_blank" clstag="shangpin|keycount|product|jiangjia">(降价通知)</a>
		</div>
	</li>
	<li id="summary-market"><div class="dt">商品编号：</div><div class="dd"><span>${item.id }</span></div></li>
	<li id="summary-grade">
		<div class="dt">商品评分：</div>
		<div class="dd">
			<span class="star  sa0"></span>
			<a href="#comment"></a>
		</div>
	</li><!-- 商品评分-->
	<li id="summary-service" class="hide">
		<div class="dt">服&#x3000;&#x3000;务：</div>
		<div class="dd">由 解忧 发货并提供售后服务。</div>
	</li>
</ul><!--summary end-->
		<div id="brand-bar" clstag="shangpin|keycount|product|btn-coll">
	<dl class="slogens">
		<dt>淘淘·正品保证</dt>
		<dd class="fore1">
			<a target="_blank" href="http://help.360buy.com/help/question-67.html"><b></b><span>货到</span><span>付款</span></a>
		</dd>
		<dd class="fore2"></dd>
		<dd class="fore3"><a target="_blank" href="http://help.360buy.com/help/question-65.html"><b></b><span>满39</span><span>免运费</span></a></dd>
		<dd class="fore4"></dd>
		<dd class="fore5"><a target="_blank" href="http://help.360buy.com/help/question-97.html"><b></b><span>售后</span><span>上门</span></a></dd>
	</dl>
	 <div class="seller hide">
		    <p class="seller-link"></p>
			<p id="evaluate">
		        <em class="dt">服务评价：</em>
		        <span class="heart-white"><span class="heart-red h4">&nbsp;</span></span>
		        <em class="evaluate-grade"></em>
	        </p>
	    </div> 
</div><!--brand-bar-->
			<ul id="choose" clstag="shangpin|keycount|product|choose">
				<li id='choose-type'></li><script type="text/javascript"> var ColorSize = [{"SkuId":1221882,"Size":"","Color":""}];</script>
								<li id="choose-amount">
					<div class="dt">购买数量：</div>
					<div class="dd">
						<div class="wrap-input">
								<a class="btn-reduce" href="javascript:;" onclick="setAmount.reduce('#buy-num')">减少数量</a>
								<a class="btn-add" href="javascript:;" onclick="setAmount.add('#buy-num')">增加数量</a>
								<input class="text" id="buy-num" value="1" onkeyup="setAmount.modify('#buy-num');"/>
						</div>
					</div>
				</li>
		        <li id="choose-result"><div class="dt"></div><div class="dd"></div></li>
				<li id="choose-btns">
					<div id="choose-btn-append"  class="btn">
							<a class="btn-append " id="InitCartUrl" href="http://www.jieyou.com/order/${item.id}.html" clstag="shangpin|keycount|product|initcarturl">立即购买<b></b></a>
					</div>
					<div id="choose-btn-easybuy" class="btn"></div>
					<div id="choose-btn-divide" class="btn"></div>
				</li>
			</ul><!--choose end-->
			<span class="clr"></span>
		</div>
		
		<div id="preview">
			<div id="spec-n1" class="jqzoom" clstag="shangpin|keycount|product|spec-n1">
				<img data-img="1" width="350" height="350" src="${item.images[0]}" alt="${item.title}"  jqimg="${item.images[0]}"/>
			</div>
					
			<div id="spec-list" clstag="shangpin|keycount|product|spec-n5">
				<a href="javascript:;" class="spec-control" id="spec-forward"></a>
				<a href="javascript:;" class="spec-control" id="spec-backward"></a>
				<div class="spec-items">
					<ul class="lh">   
						<c:forEach items="${item.images}" var="pic" varStatus="status">  
							<c:choose>
								<c:when test="${status.index == 0 }">
									<li>
										<img data-img="1" class="img-hover"  alt="${item.title}" src="${pic}" width="50" height="50" data-url="${pic}">
									</li>
								</c:when>
								<c:otherwise>
									<li>
										<img data-img="1" alt="${item.title}" src="${pic}" width="50" height="50" data-url="${pic}">
									</li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ul>
				</div>
			</div>
</div>
<div class="clb"></div>				
			</div>
		</div><!--preview end-->
	</div><!--product-intro end-->
</div>
<div class="w">
	<div class="right">
		<div id="product-detail" class="m m1" data-widget="tabs" clstag="shangpin|keycount|product|detail">
			<div class="mt">
				<ul class="tab">
	<li clstag="shangpin|keycount|product|pinfotab" data-widget="tab-item" class="curr"><a href="javascript:;" >商品介绍</a></li>
</ul>
			</div>
			<div class="mc" data-widget="tab-content" id="product-detail-1">
				<div class="detail-correction">
					<b></b>如果您发现商品信息不准确，欢迎纠错
				</div>
				<div class="detail-content">
						${itemDesc.itemDesc }
				
				</div>
			</div>
			<div class="mc hide" data-widget="tab-content" id="product-detail-2">
				${itemParam}
			</div>
		</div>
</div><!--right end-->
	
	<span class="clr"></span>
</div>
<!-- footer start -->
<jsp:include page="../commons/footer.jsp" />
<!-- footer end -->
<script type="text/javascript" src="/js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="/js/lib-v1.js"></script>
<script type="text/javascript" src="/js/product.js"></script>
</body>
</html>