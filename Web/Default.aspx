﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="theme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
  
 </asp:Content> 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <div class="banner">
   <div class="slider">
     <center>
     <section id="rt-showcase-surround">
       <div id="rt-showcase" class="slider-container rt-overlay-dark">
        <div class="rt-container slider-container">
            <div class="rt-grid-12 rt-alpha rt-omega">
                <!--  实验证明，还是可以内联的   -->
                <link rel="stylesheet" href="css/slider.css">

                <div class="csslider1 autoplay">
                    <input name="cs_anchor1" autocomplete="off" id="cs_slide1_0" type="radio" class="cs_anchor slide" >
                    <input name="cs_anchor1" autocomplete="off" id="cs_slide1_1" type="radio" class="cs_anchor slide" >
                    <input name="cs_anchor1" autocomplete="off" id="cs_slide1_2" type="radio" class="cs_anchor slide" >
                    <input name="cs_anchor1" autocomplete="off" id="cs_play1" type="radio" class="cs_anchor" checked>
                    <input name="cs_anchor1" autocomplete="off" id="cs_pause1" type="radio" class="cs_anchor" >
                    <ul>
                        <div style="width: 100%; visibility: hidden; font-size: 0px; line-height: 0;">
                            <img src="images/1.jpg" style="width: 100%;">
                        </div>
                        <li class="num0 img">
                            <img src="images/1.jpg" alt="Clouds" title="Clouds" />
                        </li>
                        <li class="num1 img">
                            <img src="images/2.jpg" alt="Typewriter" title="Typewriter" />
                        </li>
                        <li class="num2 img">
                            <img src="images/3.jpg" alt="Bicycle" title="Bicycle" />
                        </li>
                    
                    </ul>
                    
                    <div class="cs_arrowprev">
                        <label class="num0" for="cs_slide1_0"></label>
                        <label class="num1" for="cs_slide1_1"></label>
                        <label class="num2" for="cs_slide1_2"></label>
                    </div>
                    <div class="cs_arrownext">
                        <label class="num0" for="cs_slide1_0"></label>
                        <label class="num1" for="cs_slide1_1"></label>
                        <label class="num2" for="cs_slide1_2"></label>
                    </div>
                    
                    <div class="cs_bullets">
                        <label class="num0" for="cs_slide1_0">
                            <span class="cs_point"></span>
                            <span class="cs_thumb"><img src="images/small/1.jpg" alt="Clouds" title="Clouds" /></span>
                        </label>
                        <label class="num1" for="cs_slide1_1">
                            <span class="cs_point"></span>
                            <span class="cs_thumb"><img src="images/small/2.jpg" alt="Typewriter" title="Typewriter" /></span>
                        </label>
                        <label class="num2" for="cs_slide1_2">
                            <span class="cs_point"></span>
                            <span class="cs_thumb"><img src="images/small/3.jpg" alt="Bicycle" title="Bicycle" /></span>
                        </label>
                    </div>
                    
                </div>

            </div>
            <div class="clear"></div>
        </div>
    </div>
    </section>        <!-- /slider -->
    </center>
   </div>
 </div>
 <div class="show">
   <img src="#" width="100%" height="580"/>
   <img src="#" width="100%" height="580"/>
   <img src="#" width="100%" height="580"/>
   <img src="#" width="100%" height="580"/>
 </div>
  

</asp:Content>

