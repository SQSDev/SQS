<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rewen.aspx.cs" Inherits="rewen" Theme="theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #div1
        {
            width: 200px;
            height: 200px;
            background: #fff;
			border:1px solid #999;
            position: absolute;
			float:left;
            right: 0;
            bottom: 0;
			top:160px;
        }
</style>
<script type="text/javascript">
        window.onscroll = function () {
            var oDiv = document.getElementById('div1');
            var DivScroll = document.documentElement.scrollTop || document.body.scrollTop;      //获取移动高度
            //                        oDiv.style.top = (document.documentElement.clientHeight - oDiv.offsetHeight)/2 + DivScroll + 'px';
            move(parseInt((document.documentElement.clientHeight - oDiv.offsetHeight) / 5 + DivScroll));    //调用传参，其中里面的参数是DIV要走的终点。也就是（可视高度-DIV高度）/2+移动高度
        };
        var timer = null;
        function move(end) {
            clearInterval(timer);       //首先，先关闭之前如果有开启的setInterval;
            timer = setInterval(function () {       
                var oDiv = document.getElementById('div1');
                var speed = (end - oDiv.offsetTop) / 5;     //计算DIV要走的速度，DIV要走的速度就等于（终点-offsetTop高度）/缩放系数
                speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);       //为了避免小数，将其取整
                if (oDiv.offsetTop == end) {        //当DIV到达终点，则关闭setInterval;
                    clearInterval(timer);
                }
                else {
                    oDiv.style.top = oDiv.offsetTop + speed + 'px';     //移动div
                }
            }, 30);
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="rewen">
  <div class="left">
    <ul>
      <li>
        <a class="a" href="#" title=""><img src="images/u1.jpg" width="300" height="200" /></a>
        <div>
         <div style=" height:50px; padding:0;">
            <img src="images/u11.png" style="float:left; padding:20px;"/>
            <a style="float: left; padding-top:25px;">啊啊啊</a>
            <a style="float:right; padding-top:25px;">2小时前</a>
         </div>
          <p style="font-weight:bold; margin-top:70px;">特拉斯看不见大货车，谷歌却能识别行人手势</p>
          <br />
          <p>前提是那个骑车的人拐弯真的打了手势...</p>
          <a style="float: right;"><img src="images/u15.png" width="18" height="20" />&nbsp;专栏</a>
        </div>
      </li>
      <li>
        <a class="a" href="#" title=""><img src="images/u1.jpg" width="300" height="200" /></a>
        <div>
         <div style=" height:50px; padding:0;">
            <img src="images/u11.png" style="float:left; padding:20px;"/>
            <a style="float: left; padding-top:25px;">啊啊啊</a>
            <a style="float:right; padding-top:25px;">2小时前</a>
         </div>
          <p style="font-weight:bold; margin-top:70px;">特拉斯看不见大货车，谷歌却能识别行人手势</p>
          <br />
          <p>前提是那个骑车的人拐弯真的打了手势...</p>
          <a style="float: right;"><img src="images/u15.png" width="18" height="20" />&nbsp;专栏</a>
        </div>
      </li>
      <li>
        <a class="a" href="#" title=""><img src="images/u1.jpg" width="300" height="200" /></a>
        <div>
         <div style=" height:50px; padding:0;">
            <img src="images/u11.png" style="float:left; padding:20px;"/>
            <a style="float: left; padding-top:25px;">啊啊啊</a>
            <a style="float:right; padding-top:25px;">2小时前</a>
         </div>
          <p style="font-weight:bold; margin-top:70px;">特拉斯看不见大货车，谷歌却能识别行人手势</p>
          <br />
          <p>前提是那个骑车的人拐弯真的打了手势...</p>
          <a style="float: right;"><img src="images/u15.png" width="18" height="20" />&nbsp;专栏</a>
        </div>
      </li>
    </ul>
    <div style="padding-top:20px; padding-bottom:20px;">
     <a>查看更多报告</a>
    </div>
  </div>
  <div class="right">
   <div class="hot">
     <a>热门文章</a>
   </div>
   <div class="hot_list">
     <ul>
       <li>aaaa</li>
       <li>aaaa</li>
     </ul>
   </div>
  </div>
 </div>
</asp:Content>

