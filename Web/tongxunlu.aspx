<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tongxunlu.aspx.cs" Inherits="tongxunlu" Theme="theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
      <div id="Newly-build" class="Typeface">
       <div id="Newly-build-list">
        <div id="Newly-build_state1" style=" visibility:hiddle; width:20px; height:20px; display:none;">
          <div id="Newly-build_state1_content">
             <div id="New-list" class="ax-image">
               <img id="New-list_img" class="img" src="images/u56.png" width="20" height="20" /> 
             </div>
          </div>
        </div>
        <div id="Newly-build_state0" style="width:20px; height:20px; visibility: visible;">
          <div id="Newly-build_state0_content">
              <div id="New-list0" class="ax-image">
                <img onmouseover="mOver(this)" onmouseout="mOut(this)" id="New-list0_img" class="img" src="images/u54.png" width="20" height="20" />          
              </div>
          </div>
        </div>
        <div id="text"><a>新建通讯录</a></div>
       </div>
       <div id="Mail-list" class="Typeface">
        <span class="name">通讯录名称</span>
        <span class="user">用户名</span>
        <span><a href="#"><img src="images/u9.png" width="25" height="25" /></a></span>
       </div>
      </div>
   </div>
<script>
function mOver()
{
document.getElementById('New-list0_img').src="images/u56.png";
}
function mOut()
{
document.getElementById('New-list0_img').src="images/u54.png";
}
</script>  
    </form>
</body>
</html>
