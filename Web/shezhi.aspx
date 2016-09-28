<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shezhi.aspx.cs" Inherits="sh3" Theme="theme1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>社区科技</title>

<script src="js/jquery-1.11.2.min.js" type="text/javascript" language="javascript"></script>

 <script>
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
     <div id="menu-info">
      <div id="top">
        <h2>主账户设置</h2>
      </div>
      <div id="Set-up">
        <div class="Head-portrait">
          <label>头像</label>
          <a href=""><img src="images/u37.png" /></a>
        </div>
        <div class="Name">
          <label>账户名称</label>
          <input type="text" value class="name" />
        </div>
        <div class="Tel">
          <label>手机号</label>
          <input type="text" value class="tel" />
        </div>
        <div class="Mail">
          <label>邮箱</label>
          <input type="text" value class="mail" />
        </div>
        <div class="WeChat">
          <label>绑定微信</label>
          <div class="WeC">
            <a onmouseover="mOver(this)" onmouseout="mOut(this)" href="#" class="btn_widthraw" style="color:#fff; background:#a1c2fa;">未绑定</a>
            绑定后可在微信上查看所有状态及管理员操作通知
          </div>
        </div>
        <div class="buttom">
          <span class="release">
             <input id="btn_check_form" name type="button" value="保存" />
          </span>
        </div>
      </div>
     </div>
     <div id="menu-info" style="background:none;">
       <div id="left">
        <div class="top_left">
         <h2>绑定设置</h2>
         <a href="#">绑定</a>
        </div>
        <div id="left_textarea">
         <ul class="category">
          <li style="float:left;">名称</li>
          <li style="float:right;">操作</li>
         </ul>
         <ul class="bottom">
          <li style="float:left;">1</li>
          <li style="float:right;"><a href="#">解绑</a></li>
         </ul>
        </div>
       </div>
       <div id="right">
        <div class="top_right">
         <h2>管理员设置</h2>
         <a href="#">绑定</a>
        </div>
        <div id="right_textarea">
         <ul class="category">
          <li class="id">名称</li>
          <li class="telnum">手机号</li>
          <li>权限</li>
          <li>操作</li>
         </ul>
         <ul class="bottom">
          <li class="id">1</li>
          <li class="telnum">13458546841</li>
          <li>所有</li>
          <li><a href="#">编辑</a></li>
         </ul>
        </div>
       </div>
     </div>
     <div id="menu-info">
      <div id="top">
        <h2>提现设置</h2>
      </div>
      <div id="Set-up">
        <div class="Bank">
          <label>开户银行</label>
          <input type="text" value class="bank" />
        </div>
        <div class="Card">
          <label>银行卡号</label>
          <input type="text" value class="card" />
        </div>
        <div class="Card-name">
          <label>开户者姓名</label>
          <input type="text" value class="card-name" />
        </div>
        <div class="Id-card">
          <label>身份证号码</label>
          <input type="text" value class="id-card" />
        </div>
        <div class="Tel">
          <label>手机号码</label>
          <input type="text" value class="tel" />
          <a href="#" class="btn_widthraw" style="color:#fff;">获取验证码</a>
        </div>
        <div class="Code">
          <label>验证码</label>
          <input type="text" value class="code" />
        </div>
        <div class="buttom">
          <span class="release">
             <input id="btn_check_form" name type="button" value="保存" />
          </span>
        </div>
     </div>
   </div>
<script>
function mOver(obj)
{
	obj.style.backgroundColor="#4285f4";
    obj.innerHTML="绑定"
}

function mOut(obj)
{
	obj.style.backgroundColor="#a1c2fa";
    obj.innerHTML="未绑定"
}
</script>
       </form>
</body>
</html>
