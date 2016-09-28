<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mingpian.aspx.cs" Inherits="mingpian" Theme="theme1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
     <script>
		$(document).ready(function() {
			new PopupLayer({trigger:"#nav",popupBlk:"#blk7",closeBtn:"#close7",eventType:"mouseover"});
			var t4 =  new PopupLayer({trigger:"#see",popupBlk:"#blk4",closeBtn:"#close4",useFx:true});
			t4.doEffects = function(way){
				way == "open"?this.popupLayer.slideDown("slow"):this.popupLayer.slideUp("slow");
			};
		});
</script>
<script>
window.onload=function(){
  var aa = document.getElementById("u20_input1");
  var bb = document.getElementById("u20_text");
  var cc = document.getElementById("u20_input");
    $(function(){
		$('#u20_input1').click(function(){
				  if(aa.checked){			   
		  bb.style.display = "inline-block";
	  }	
      })
	    $('#u20_input').click(function(){
				  if(cc.checked){	  
		  bb.style.display = "none";
	  }
	})
   });  
}
</script>
</head>
<body>
    <form id="form1" runat="server">
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
    <div id="Poster">
     <table border="0" cellpadding="0" cellspacing="0" width="1170">
      <tr>
       <td>
         <div class="Poster_left">
           <div id="Set-up1">
             <div class="Head-poster">
                <label>海报</label>
                <img src="images/u36.png" />
             </div>
             <div class="Name">
                <label>社群名称</label>
                <input type="text" value class="name" />
             </div>
             <div class="Label">
                <label>标签</label>
                <img src="images/u48.png" />
             </div>
             <div class="Area">
                <label>坐标</label>
                <select id="Province" name="Province">
                    <option value="0">省份</option>
                    <option value="安徽">安徽</option>
                    <option value="北京">北京</option>
                    <option value="福建">福建</option>
                    <option value="甘肃">甘肃</option>
                    <option value="广东">广东</option>
                    <option value="广西">广西</option>
                    <option value="贵州">贵州</option>
                    <option value="海南">海南</option>
                    <option value="河北">河北</option>
                    <option value="河南">河南</option>
                    <option value="黑龙江">黑龙江</option>
                    <option value="湖北">湖北</option>
                    <option value="湖南">湖南</option>
                    <option value="吉林">吉林</option>
                    <option value="江苏">江苏</option>
                    <option value="江西">江西</option>
                    <option value="辽宁">辽宁</option>
                    <option value="内蒙古">内蒙古</option>
                    <option value="宁夏">宁夏</option>
                    <option value="青海">青海</option>
                    <option value="山东">山东</option>
                    <option value="山西">山西</option>
                    <option value="陕西">陕西</option>
                    <option value="上海">上海</option>
                    <option value="四川">四川</option>
                    <option value="天津">天津</option>
                    <option value="新疆">新疆</option>
                    <option value="云南">云南</option>
                    <option value="浙江">浙江</option>
                    <option value="重庆">重庆</option>
               </select>
               <select name="City" id="City" onChange="OnChange(2)">
                    <option value="0">城市</option>
               </select>
               <select name="Town" id="Town" style="display:none">
                    <option value="0">县/镇</option>
               </select>
             </div>
             <div class="Type">
                <label>类型</label>
                <input id="u20_input"  type="radio"  value="radio" name="charge"/>免费
                <input id="u20_input1"  type="radio"  value="radio" name="charge"/>付费
                <input type="text" id="u20_text"  />
             </div>
             <div class="Representative">
                <label>代表群友</label>
                <input type="text" value class="representative" />
             </div>
             <div class="Representative">
                <label>&nbsp;</label>
                <img src="images/u181.png" />
             </div>
             <div class="Introduce">
                <label>介绍</label>
             </div>
             <div class="Introduce">
                <textarea name="content" rows="15" class="infoInput" style="width:95%; height:180px;"></textarea>
             </div>
             <div class="Group">
                <label>群规（可选填）</label>
                <input type="text" value class="group" />
             </div>
             <div class="Group">
                <label>&nbsp;</label>
                <img src="images/u181.png" />
             </div>
             <div class="Join">
                <label>加入方式</label>
             </div>
             <div class="Join">
                <textarea name="content" rows="15" class="infoInput" style="width:85%; height:180px;"></textarea>
                <img src="images/u199.png" width="45" height="45" />
             </div>
             <div class="buttom">
               <span class="release">
                 <input id="btn_check_form" name type="button" value="保存并分享" />
               </span>
             </div>
           </div>
         </div>
       </td>
       <td width="20">&nbsp;</td>
       <td>
         <div class="Poster_right">
           <div class="Preview">
             <h2>实时预览</h2>
           </div>
           <div class="Com">
             <div>
               <img src="images/u6.jpg" width="535" />
               <h3>美剧交流群</h3>
             </div>
             <div>
               <p><img src="images/u16.png" width="25"  height="25"/>111</p>
               <p><img src="images/u14.png" width="25"  height="25"/>1111</p>
               <p><img src="images/u12.png" width="25"  height="25"/>111</p>
             </div>
             <div>
               <div class="tit">
                 <p>代表群友</p>
               </div>
               <p><img src="images/u31.png" width="10"  height="10" class="circular"/>111</p>
               <p><img src="images/u31.png" width="10"  height="10" class="circular"/>1111</p>
               <p><img src="images/u31.png" width="10"  height="10" class="circular"/>111</p>
             </div>
             <div>
               <div class="tit">
                 <p>群介绍</p>
               </div>
               <div class="text1">
                一个美剧迷的聚集地
               </div>
             </div>
             <div>
               <div class="tit">
                 <p>群规</p>
               </div>
               <p><img src="images/u31.png" width="10"  height="10" class="circular"/>111</p>
               <p><img src="images/u31.png" width="10"  height="10" class="circular"/>1111</p>
               <p><img src="images/u31.png" width="10"  height="10" class="circular"/>111</p>
             </div>
              <div>
               <div class="tit">
                 <p>加入方式</p>
               </div>
               <div class="text1">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar
                <br />
                <p><img src="#" /></p>
               </div>
             </div>
           </div>
         </div>
       </td>
      </tr>
     </table>
    </div>
   </div>

    </form>
</body>
</html>
