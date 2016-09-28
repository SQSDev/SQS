<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="zhuanti.aspx.cs" Inherits="zhuanti" Theme="theme1"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
        <script>
        if (typeof jQuery == 'undefined') {
            window.alert('没有jQuery');
        } else { }
    </script>
    <script>
  $(function(){
	 var num=$("#a").html();
	 if(num.length>15){
		 $("#a").html(num.substr(0,15)+"...") 
	 }
	  
  });
</script>
<script>
var titleStr = "1234567890";//你从数据库里读到的字符串内容
var maxLen = 5;//你想显示的长度
if(titleStr.length > maxLen)
    document.getElementById("aa").innerHTML = titleStr.substring(0,maxLen)+"...[<a href='#'>详细</a>]";
else
    document.getElementById("aa").innerHTML = titleStr;
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="index-nav">
   <div class="select">
     <div class="sss">
       
     </div>
     <select>
       <option>电商</option>
       <option>电商</option>
       <option>电商</option>
     </select>
   </div>
 </div>
 <section class="news_list">
    <section id="pageContent" class="layout">
      <ul>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>黑马会携手华润打造企业服务生态圈助力SAAS社群</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>为什么我们会做孤鹿学苑?</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>免费报名∣不用头疼，公众号小编怎么持续性做高质量的内容输出？</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>孤鹿贝金雨：欲打造SAAS社群营销&ldquo;滴滴优步&rdquo;</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>会员功能重磅上线，助力粉丝享特权！</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>孤鹿携手果壳网开启轻SAAS社群营销&ldquo;在行时代&rdquo;</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>孤鹿贝金雨：社群saas工具打造bat无法产生的金数据</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>有赞服务型商家集体蚂蚁搬家孤鹿轻SAAS因此受益</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>盘点2016年腾讯系最具潜力创业公司</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              <li>
                      <div class="img"><img src="images/zt.jpg" alt=""></div>
                      <div class="text">
                          <h4>吴晓波携手社群saas管理工具孤鹿推社群媒体</h4>
                          <p id="aa">摘要：&nbsp;水水水水水杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水</p>
                          <p>发布机构：&nbsp;生生世世</p>
                          <p>发布日期:&nbsp;2016-4-4</p>
                          <p class="bottom"><span class="all"><a href="">查看全文</a></span><span class="down"><em class="ico"></em><a href="#"><img src="images/u53.png" width="25" height="25"/></a></span></p>
                      </div>
              </li>
              </ul>

    </section>
  </section>
  <div class="more">
    <a href="#">查看更多</a>
  </div>
</asp:Content>

