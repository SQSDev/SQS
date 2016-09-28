<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuangtaichakan.aspx.cs" Inherits="zhuangtaichakan" Theme="theme1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>社群科技</title>
<%--<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/public.css" rel="stylesheet" type="text/css" />
<link href="css/core.css" rel="stylesheet" type="text/css" />--%>
<script src="js/jquery.1.3.2.js" type="text/javascript"></script>

 <script language="javascript">
		$(document).ready(function() {
			new PopupLayer({trigger:"#nav",popupBlk:"#blk7",closeBtn:"#close7",eventType:"mouseover"});
			var t4 =  new PopupLayer({trigger:"#see",popupBlk:"#blk4",closeBtn:"#close4",useFx:true});
			t4.doEffects = function(way){
				way == "open"?this.popupLayer.slideDown("slow"):this.popupLayer.slideUp("slow");
			};
		});
	</script>
</head>
<body style="background:#f5f6f8;">
  <div class="header">
    <section>
       <div class="logo">
         <a href="/index.html">
               <i class="ico"><img src="images/u854.png" /></i>

               <h3>社群管理系统</h3>
         </a>
       </div>
       <div class="together">
         <a class="togor" href="#">
            <em class="ico darkhorse">
              <img src="images/img_u9.png" />
              <i class="ico"></i>
            </em>
            <strong>杭州咸鱼咖啡</strong> 
         </a>
         <span>|<a href="#">退出</a></span>
       </div>
    </section>
  </div>
  <div class="nav-menu">
    <div id="nav" class="Typeface">
     <a href="#">
      <img src="images/hamburger.svg" />
     </a>
    </div>
    <div id="blk7" class="blk" style="display:none;">
            <div class="head"><div class="head-right"></div></div>
            <div class="main">
                <a href="javascript:void(0)" id="close7" class="closeBtn">关闭</a>
                <ul>
                    <li><a href="#">社群名片</a></li>
                    <li><a href="#">通讯录</a></li>
                    <li><a href="#">事件发起</a></li>
                    <li><a href="#">状态查看</a></li>
                    <li><a href="#">我的钱包</a></li>
                    <li><a href="#">设置</a></li>
                </ul>
            </div>
            <div class="foot"><div class="foot-right"></div></div>
        </div>
    <h3>通讯录</h3>
    <div id="mes" class="Typeface">
     <div id="mes_state">
      <div id="mes_state_content">
        <div id="mes1" class="ax_images" style="cursor:pointer;">
         <a href="#">
          <img src="images/u994.png" width="25" height="28"/>
         </a>
        </div>
        <div id="mes2" class="ax_images">
            <img src="images/u996.png" />
            <div id="mes3" class="text" style="top:1px; transform-origin:5.5px 7.5px 0px;">
                <span>2</span>
            </div>
        </div>
      </div>
     </div>
    </div>
    <div id="search" class="Typeface">
      <div id="search_state">
        <div id="search_state_conten">
          <div id="search0" style="cursor:pointer;">
            <a href="#">
              <img src="images/u27.png" width="25" height="25" />
            </a>
          </div>
        </div>
      </div>
    </div>
   </div>
   <div id="warp">
     <div id="menu-info">
      <div id="top">
        <h2>活动报名</h2>
        <a id="see" href="#">查看全部</a>
      </div>
      <div id="blk4" class="blk" style="display:none;">
            <div class="head"><div class="head-right"></div></div>
            <div class="main">
                <a href="javascript:void(0)" id="close4" class="closeBtn">关闭</a>
                <ul>
                    <li><a href="#">项目1</a></li>
                    <li><a href="#">项目2</a></li>
                    <li><a href="#">项目3</a></li>
                    <li><a href="#">项目4</a></li>
                    <li><a href="#">项目5</a></li>
                    <li><a href="#">项目6</a></li>
                    <li><a href="#">项目7</a></li>
                    <li><a href="#">项目8</a></li>
                    <li><a href="#">项目9</a></li>
                    <li><a href="#">项目10</a></li>
                    <li><a href="#">项目11</a></li>
                    <li><a href="#">项目12</a></li>
                </ul>
            </div>
            <div class="foot"><div class="foot-right"></div></div>
      </div>
      <div id="textarea">
        <ul class="category">
          <li class="name">名称</li>
          <li>类型</li>
          <li>报名人数（人）</li>
          <li>已收款（元）</li>
          <li>状态</li>
          <li>操作</li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>免费</li>
          <li>5555</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">报名表</a></li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>免费</li>
          <li>5555</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">报名表</a></li>
        </ul>
      </div>
     </div>
     <div id="menu-info">
      <div id="top">
        <h2>活动签到</h2>
        <a href="#">查看全部</a>
      </div>
      <div id="textarea">
        <ul class="category">
          <li class="name">名称</li>
          <li>&nbsp;</li>
          <li>报名人数（人）</li>
          <li>签到人数（人）</li>
          <li>状态</li>
          <li>操作</li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>&nbsp;</li>
          <li>5555</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">签到表</a></li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>&nbsp;</li>
          <li>5555</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">签到表</a></li>
        </ul>
      </div>
     </div>
     <div id="menu-info">
      <div id="top">
        <h2>投票问卷</h2>
        <a href="#">查看全部</a>
      </div>
      <div id="textarea">
        <ul class="category">
          <li class="name">名称</li>
          <li>&nbsp;</li>
          <li>类型</li>
          <li>参与人数（人）</li>
          <li>状态</li>
          <li>操作</li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>&nbsp;</li>
          <li>免费</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">报名表</a></li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>&nbsp;</li>
          <li>免费</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">报名表</a></li>
        </ul>
      </div>
      </div>
      <div id="menu-info">
      <div id="top">
        <h2>众筹</h2>
        <a href="#">查看全部</a>
      </div>
      <div id="textarea">
        <ul class="category">
          <li class="name">名称</li>
          <li>支持人数</li>
          <li>进度</li>
          <li>已筹款（元）</li>
          <li>状态</li>
          <li>操作</li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>89</li>
          <li>78%</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">详情</a></li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>89</li>
          <li>78%</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">详情</a></li>
        </ul>
      </div>
      </div>
      <div id="menu-info">
      <div id="top">
        <h2>群购</h2>
        <a href="#">查看全部</a>
      </div>
      <div id="textarea">
        <ul class="category">
          <li class="name">名称</li>
          <li>价钱（元）</li>
          <li>购买人数（人）</li>
          <li>已收款（元）</li>
          <li>状态</li>
          <li>操作</li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>45</li>
          <li>78</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">详情</a></li>
        </ul>
        <ul class="bottom">
          <li class="name">啊啊啊啊啊</li>
          <li>45</li>
          <li>78</li>
          <li>8888</li>
          <li>进行中</li>
          <li class="result"><a href="#">详情</a></li>
        </ul>
      </div>
      </div>
     <div id="menu-info-a">
      <div id="top">
        <h2>数据看板</h2>
        <a href="#">查看全部</a>
      </div>
      <div class="content">
       <div class="event">
          <h3>事件分布</h3>
       </div>
          <img src="images/u253.png" width="900" height="600" />
      </div>
      <div class="content">
       <div class="event">
          <h3>参与情况</h3>
       </div>
          <img src="images/u261.png" width="700" height="520" />
      </div>
   </div>
 </body>
</html>
