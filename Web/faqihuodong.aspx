<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faqihuodong.aspx.cs" Inherits="faqihuodong" Theme="theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>社群科技</title>

<link rel="stylesheet" href="css/jquery.datetimepicker.css" />
<script src="js/jquery-1.11.2.min.js" type="text/javascript" ></script>
<script src="js/jquery.1.3.2.js" type="text/javascript" ></script>
<script src="js/popup_layer.js" type="text/javascript"></script>

    <script language="javascript">
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
<script>
  var a = document.getElementById("u20_input3");
  var b = document.getElementById("u20_text1");
  var c = document.getElementById("u20_input2");
    $(function(){
		$('#u20_input3').click(function(){
				  if(a.checked){			   
		  b.style.display = "inline-block";
	  }	
      })
	    $('#u20_input2').click(function(){
				  if(c.checked){	  
		  b.style.display = "none";
	  }
	})
   });  
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
           <div class="Poster_left1">
            <div class="Preview">
             <h2>实时预览</h2>
            </div>
            <div id="Set-up2">
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
             <div class="Type">
                <label>类型</label>
                <input id="u20_input"  type="radio"  value="radio" name="1"/>免费
                <input id="u20_input1"  type="radio"  value="radio" name="1"/>付费
                <input type="text" id="u20_text"  />
             </div>
             <div class="Type">
                <label>活动人数</label>
                <input id="u20_input2"  type="radio"  value="radio" name="2"/>不限制
                <input id="u20_input3"  type="radio"  value="radio" name="2"/>限制
                <input type="text" id="u20_text1"  />
             </div>
             <div class="Type">
                <label>地点</label>
                <input id="u20_input"  type="radio"  value="radio" name="3"/>线上
                <input id="u20_input1"  type="radio"  value="radio" name="3"/>线下
                <input type="text" id="u20_text"  />
             </div>
             <div class="Demo">
                <label>活动时间</label>
			    开始&nbsp;&nbsp;<input type="text" value="" id="datetimepicker"/><br><br>
                <label>&nbsp;</label>
                结束&nbsp;&nbsp;<input type="text" value="" id="datetimepicker1"/><br><br>
			</div>
            <div class="buttom">
               <span class="release">
                 <input id="btn_check_form" name type="button" value="下一步" />
               </span>
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
               <h3>“下一个风口在哪里”------第一届社群第线下沙龙</h3>
             </div>
             <div>
               <p><img src="images/u16.png" width="25"  height="25"/>111</p>
               <p><img src="images/u12.png" width="25"  height="25"/>1111</p>
               <p><img src="images/u251.png" width="25"  height="25"/>111</p>
               <p><img src="images/u14.png" width="25"  height="25"/>1111</p>
               <p><img src="images/u75.png" width="25"  height="25"/>111</p>
             </div>
             <div>
               <div class="tit">
                 <p>活动介绍</p>
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
    <script src="js/jquery.js"></script>
<script src="js/jquery.datetimepicker.js"></script>
<script>
$('#datetimepicker10').datetimepicker({
	step:5,
	inline:true
});
$('#datetimepicker_mask').datetimepicker({
	mask:'9999/19/39 29:59'
});
$('#datetimepicker').datetimepicker();
$('#datetimepicker').datetimepicker({value:'',step:30});
$('#datetimepicker1').datetimepicker();
$('#datetimepicker1').datetimepicker({value:'',step:30});
</script>
</html>
