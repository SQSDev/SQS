<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="qianbao.aspx.cs" Inherits="qianbao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <>
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
        <h2>提现管理</h2>
      </div>
      <div id="bottom">
        <ul>
          <li>
            <h5>总余额（元）</h5>
            <h3>1658.7</h3>
            <strong></strong>
          </li>
          <li>
            <h5>冻结余额（元）</h5>
            <h3>58.7</h3>
            <p><a href="#">查看详情</a></p>
            <strong></strong>
          </li>
          <li class="last">
            <h5>可提现余额（元）</h5>
            <h3>1600</h3>
            <p><a href="#">查看详情</a><a href="#" class="btn_widthraw">提现</a></p>
          </li>
        </ul> 
      </div>
      </div>
      <div id="menu-info">
        <div id="top">
          <h2>交易明细</h2>
        </div>
        <div id="textarea">
         <ul class="category">
          <li class="name">事件名称</li>
          <li>姓名</li>
          <li>交易类型</li>
          <li>交易金额（元）</li>
          <li>交易时间</li>
          <li>支付方式</li>
        </ul>
        <ul class="bottom">
          <li class="name">第三届互联网大会</li>
          <li>小李</li>
          <li>活动收入</li>
          <li>356</li>
          <li>2016-7-29</li>
          <li>微信支付</li>
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <ul class="bottom">
        
        </ul>
        <div class="pagination">
          <span class="page_nav_area">
            <a id="prevPage" href="javascript: void(0);" class="btn page_next">上一页</a>
            <span class="page_num">
              <label>1</label>
              <span class="num_gap">/</span>
              <label>2</label>
            </span>
            <a id="nextPage" href="#" class="btn page_next">下一页</a>
          </span>
          <span class="goto_area">
            <input id="pageText" type="text" />
            <a id="jumpButton" href="javascript:void(0);" class="btn page_go">跳转</a>
          </span>
        </div> 
       </div>
      </div>
      <div id="menu-info">
        <div id="top">
          <h2>数据看板</h2>
        </div>
        <div class="content">
          <div class="event">
            <h3>收入分析</h3>
          </div>
          <img src="images/u244.png" />
        </div>
      </div>
   </div>
</asp:Content>

