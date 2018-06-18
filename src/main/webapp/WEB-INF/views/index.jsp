<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>基建矿山招投标管理系统-工程合同管理模块</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" /></h1>
  </div>

</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="skip/four?num=1" target="right"><span class="icon-caret-right"></span>合同基本信息管理</a></li>
    <li><a href="skip/five" target="right"><span class="icon-caret-right"></span>合同变更管理</a></li>
    <li><a href="skip/three" target="right"><span class="icon-caret-right"></span>合同执行跟踪</a></li>
    <li><a href="skip/six" target="right"><span class="icon-caret-right"></span>合同基本信息添加</a></li>
    <li><a href="skip/two?num=1" target="right"><span class="icon-caret-right"></span>承建单位信息管理</a></li>
    <li><a href="skip/one" target="right"><span class="icon-caret-right"></span>合同基本信息查询</a></li>
  </ul>
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>

<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="skip/four?num=1" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>