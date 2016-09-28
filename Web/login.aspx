

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login"  MasterPageFile="~/MasterPage.master" Theme="theme1"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      
 </asp:Content> 
   
            
       <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


           <div class="login">
  <header role="banner">

		<nav class="main-nav">
			<ul>
				<!-- inser more links here -->
				<li><a class="cd-signin" href="#0">登录</a></li>
				<li><a class="cd-signup" href="#0">注册</a></li>
			</ul>
		</nav>
	</header>

	<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">登录</a></li>
				<li><a href="#0">新注册</a></li>
			</ul>

			<div id="cd-login"> <!-- log in form -->
				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">用户名</label>
						<input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">密码</label>
						<input class="full-width has-padding has-border" id="signin-password" type="text"  placeholder="Password">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">记住登录状态</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="登录">
					</p>
				</form>
				
				<p class="cd-form-bottom-message"><a href="#0">忘记密码?</a></p>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-login -->

			<div id="cd-signup"> <!-- sign up form -->
				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">用户名</label>
						<input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">邮箱</label>
						<input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">密码</label>
						<input class="full-width has-padding has-border" id="signup-password" type="text"  placeholder="Password">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">我已阅读并同意 <a href="#0">用户协议</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="注册">
					</p>
				</form>

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-signup -->

			<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">丢失了你的密码？请输入您的电子邮件地址。您将收到一个链接，以创建一个新的密码。</p>

				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">邮箱</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="重置密码">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">回到登录界面</a></p>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div> <!-- cd-user-modal-container -->
	</div> <!-- cd-user-modal -->
 </div>
 <script src="js/jquery.1.11.1.js"></script>
 <script src="js/main.js"></script>
 <div class="show">
   <img src="#" width="100%" height="580"/>
   <img src="#" width="100%" height="580"/>
   <img src="#" width="100%" height="580"/>
   <img src="#" width="100%" height="580"/>
 </div>
   <div class="footer">
   <div class="framecenter footer">
     <div class="footerdown"></div>
     <div class="parttype">
           <div class="fl">
                <ul>
                    <li>
                        <dl>
                            <dt>公司</dt>
                            <dd style=" text-align:left;"><a href="#">关于我们</a></dd>
                            <dd><a href="#">加入我们</a></dd>
                            <dd><a href="#">合作伙伴</a></dd>
                            <dd><a href="#">产品服务</a></dd>
                        </dl>
                    </li>
                    <li class="contact">
                        <dl>
                            <dt>联系我们</dt>
                            <dd class="dd01">商务合作：info@zhugeio.com</dd>
                            <dd class="dd02">客户支持：40080-94843</dd>
                            <dd class="dd03">官方QQ群：4008094843</dd>
                            <dd class="dd04">公司地址：北京市朝阳区工体北路4号院80 office 4层410室</dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="fr">
              <h2 style="text-align:left;">微信公众号</h2>
              <li>  
                <div class="img"><img src="images/erweima.jpg" alt="社群生态" /></div>
                <h4>社群生态</h4>
              </li>
              <li>
                <div class="img"><img src="images/erweima.jpg" alt="社群科学研究院" /></div>
                <h4>社群科学研究院</h4>
              </li>
            </div>
     </div>
   </div>
 </div>

       </asp:Content>
       


