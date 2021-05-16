<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Sanal Maðaza B2B B2C e-ticaret sanal POS online satýþ yazýlým</title>    
<meta name="keywords" content="e-ticaret,B2B,B2C,sanal maðaza,e ticaret,online satýþ,web ,yazýlým,güvenli eticaret">
<meta name="description" content="B2B B2C sanal maðaza e-ticaret stok yönetimi yazýlým">

<script type="text/javascript" src="js/jquery.core.js"></script>
<script type="text/javascript" src="js/jquery.superfish.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="js/jquery.easing.js"></script>
<script type="text/javascript" src="js/jquery.scripts.js"></script>
    <style type="text/css">
        .yoneticiGiris
        {
            width: 235px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrap">
    <div class="top_corner"></div>
    <div id="main_container">      
        
        <div class="middle_banner">               
           
<div class="featured_slider">
      	<!-- begin: sliding featured banner -->
         <div id="featured_border" class="jcarousel-container">
            <div id="featured_wrapper" class="jcarousel-clip">
               <ul id="featured_images" class="jcarousel-list">
                  <li><img src="images/eticaretBANNER.jpg" width="965" height="280" alt="" /></li>
                  <li><img src="images/androidBANNER.jpg" width="965" height="280" alt="" /></li>
                  <li><img src="images/kriptoBANNER.jpg" width="965" height="280" alt="" /></li>
                  <li><img src="images/gpsgprsBANNER.jpg" width="965" height="280" alt="" /></li>
               </ul>
            </div>
            <div id="featured_positioner_desc" class="jcarousel-container">
               <div id="featured_wrapper_desc" class="jcarousel-clip">
                  <ul id="featured_desc" class="jcarousel-list">                 
                     <li>
                        <div>
                           <p>E-ticaret hakkýnda iþin uzman'ýndan destek alýn...
                           </p>
                        </div>
                     </li> 
                     <li>
                        <div>
                           <p>Türkiyede ilk!  Ticaretinizi en ileri seviyede en düþük maliyetler ile cebinizden yönetin.
                           </p>
                        </div>
                     </li> 
                     <li>
                        <div>
                           <p>Veri güvenliði ve kriptolama teknolojileri ile güven altýndasýnýz.
                           </p>
                        </div>
                     </li>  
                     <li>
                        <div>
                           <p>GSM-GPRS ve Mobil entegre çözümlerimiz ile bir adým öne geçbilirsiniz.
                           </p>
                        </div>
                     </li> 
                  </ul>
               </div>

            </div>
            <ul id="featured_buttons" class="clear_fix">
               <li>1</li>
               <li>2</li>
               <li>3</li>
               <li>4</li>
            </ul>
         </div>
         <!-- end: sliding featured banner -->
</div>
          
        
        
        </div><!---------------------------------end of middle banner-------------------------------->
        
        
        <div class="center_content">
        <div class="home_section_left">
            
                            
                <h2 class="home_title">E-Ticaret</h2>
                <div class="home_subtitle">Profesyonel e-ticaret çözümleri..</div>
    
                <div class="home_section_thumb">
                <img src="images/eticaretIcon.jpg" alt="" title="" border="0">
                </div>
                <p><span>Sadece web sitesi deðil, daha fazlasý !</span><br>
                E-ticaret ve sanal maðazacýlýk her yýl artarak büyüor..&nbsp;&nbsp; Mobil cihazlara 
                    tam entegre olun.
                    <br />
                    Geride kalmayýn..&nbsp;
                    <br />
                    <span>Servet ödemeyin...</span><br>
                Fiyat/Performans garantisi ve 7/24 müþteri memuniyetine dayalý hizmet veriyoruz.
                Sorunsuz, modüler ,kullanýmý kolay E-ticaret sistemleri sunuyoruz.
                </p>
            
                       <a class="more" href="eTicaret.aspx">DEVAMI...</a>
        <div class="clear"></div>
        </div>
        
        
        <div class="home_section_left">                                        
                <h2 class="home_title">Android-Mobil</h2>
                <div class="home_subtitle">Mobil cihazlarda yazýlýmýn gücü...</div>
    
                <div class="home_section_thumb">
                <img src="images/androidIcon.jpg" alt="" title="" border="0">
                </div>
                <p><span>E-Ticaret&#39;e tam entegrasyon !</span><br>
                E-ticaret yada Web sitenizi maliyetsiz bir þekilde herhangi bir PC yada personel istihdam etmeden takip edin...&nbsp; 
                    Herþey telefonunuzda.<br> <br>
                    <span>Anroid yazýlýmlar ile sýnýrlarý aþýn !</span><br>
                                        Ssadece bir adet akýllý telefon ile herþeyin kontrolü sizde olsun..
                </p>
                <a></a>
                <a class="more" href="mobilAndroid.aspx">DEVAMI...</a>
        <div class="clear"></div>
        </div>
        
        <div class="home_section_left">                                        
                <h2 class="home_title">Web - Yazýlým</h2>
                <div class="home_subtitle">Web sitesi ve Masaüstü yazýlýmlar..</div>    
                <div class="home_section_thumb">
                <img src="images/webyazilimICON.jpg" alt="" title="" border="0">
                </div>
                <p><span>A dan Z ye tüm web hizmetleri..</span><br>
                Hosting, Alanadý , site kurulumu ve yönetim paneli dahil tüm ihtiyacýnýza ekonomik çözümler..
                <br> <br>
                <span> Kiþisel ve kurumsal yazýlým ihtiyaçlarýnýz..</span><br>
                Þirketinizin ihtiyaç duyabileceði;  SMS otomasyonu, Mobil cihazlara entegrasyon,Veri güvenliði , Raporlama , stok yönetimi <br />hizmetleri..
                </p>
                <a href="webYazilim.aspx" class="more">DEVAMI...</a>
        <div class="clear"></div>
        </div>
        
            
            <div class="left_block_wide">
                <h2></h2>
                
                <a href="#"><img src="" alt="" title="" border="0" class="projects" /></a>
                <a href="#"><img src="" alt="" title="" border="0" class="projects" /></a>
                <a href="#"><img src="" alt="" title="" border="0" class="projects" /></a>
            
            
            </div>
            
            <div class="right_block">            	
                <form id="newsletter">
                <%--<input type="text" name="" class="newsletter_input" />--%>                
                <%--<input type="submit" name="" class="newsletter_submit" value="Giriþ" />--%>     
<%--                <div class="yoneticiGiris">
                <h2>Yönetici Giriþi</h2>
                <p>Site yöneticileri için hýzlý eriþim aracý</p>
                <div>
                <asp:Label class="lblStil" ID="lblYoneticiUser" runat="server" Text="Kullanýcý :"></asp:Label>
                <asp:TextBox class="textboxGenelStil" ID="txtYoneticiUser" runat="server" ></asp:TextBox>
                </div>                
                <div>
                <asp:Label class="lblStil" ID="lblYoneticiPassword" runat="server" Text="Þifre :"></asp:Label>
                <asp:TextBox class="textboxGenelStil" ID="txtYoneticiPassword" runat="server" 
                        TextMode="Password"></asp:TextBox>
                </div>
                <div>
                <asp:LinkButton  class="butonStil" ID="LinkButton1" runat="server" 
                        onclick="LinkButton1_Click">&nbsp;&nbsp;GÝRÝÞ&nbsp;&nbsp;</asp:LinkButton>
                </div>                
                </div>           --%>
                </form>
            </div>
        
        
        
   
        
        <div class="clear"></div>
        </div>           
      
    
    </div>
</div>

</asp:Content>

