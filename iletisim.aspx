<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
<title>İLETİŞİM - Alışveriş sitesi Sanal Mağaza sitesi B2B B2C e-ticaret sitesi sanalPOS online satış yazılımları</title>    
<meta name="keywords" content="Yazılım,alışveriş sitesi,web tasarım,Android,Akıllı telefon,online satış,e-ticaret,B2B,B2C,eticaret,uzman,web ,yazılım,güvenli eticaret,sanal mağaza,stok yönetimi,raporlama yazılımı">
<meta name="description" content="web yazılım alışveriş sitesi tasarımı B2B site tasarımı B2C site e-ticaret site tasarımı sanal mağaza site tasarımı raporlama yazılımı stok yönetimi yazılımı"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--BU DIVLER TASARIM ICIN OZEL --%>
<div id="wrap">            
    <div id="main_container">                          
        <div class="center_content_pages">  
        <%--BU DIVLER TASARIM ICIN OZEL --%>
        
        
              
              <div class="financial-application-form">
             <h2>İletişime geçin..</h2>             
             <p>Müşteri memnuniyeti için 7/24 şikayet ve isteklerinizi gönderebilirsiniz.<br />
             Mesai saatleri içinde (08:30 - 18:30 ) alınan tüm teknik sorunlarınız ve talepleriniz aynı gün giderilecektir<br /></p>
                
                
                
                <div>

    <div  style="height: 427px; width: 519px">
    
    <fieldset id="fieldset_iletisim">
    <legend> İletişim Sayfası</legend>
        
   <ul id="ul_iletisim">

<li> <asp:Label CssClass="iletisimLabel"  ID="isim" runat="server" Text="İsim :"></asp:Label>        
<asp:TextBox CssClass="iletisim_textbox"  ID="txtIsim" runat="server"></asp:TextBox> </li>
     
<li>  <asp:Label CssClass="iletisimLabel"  ID="soyisim" runat="server" Text="Soyisim :"></asp:Label>
<asp:TextBox CssClass="iletisim_textbox" ID="txtSoyisim" runat="server"></asp:TextBox> </li>   

<li> <asp:Label CssClass="iletisimLabel"  ID="telefon" runat="server" Text="Telefon   :"></asp:Label>
<asp:TextBox CssClass="iletisim_textbox" ID="txtTelefon" runat="server"></asp:TextBox> </li> 
       
<li> <asp:Label CssClass="iletisimLabel"  ID="email" runat="server" Text="Email   :"></asp:Label>
<asp:TextBox CssClass="iletisim_textbox" ID="txtEmail" runat="server"></asp:TextBox> </li> 
        
<li> <asp:Label CssClass="iletisimLabel"  ID="mesaj" runat="server" Text="Mesaj    :"></asp:Label>
<asp:TextBox CssClass="iletisim_textbox" ID="txtMesaj" runat="server" 
        TextMode="MultiLine" Height="156px" Width="274px"></asp:TextBox> </li>       
    <li> 
        <asp:Button ID="Button1" runat="server" Text="Gönder" 
            onclick="Button1_Click" BackColor="#CC0000" ForeColor="White" /> </li>
    <li>  
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>  </li>
    <li><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* İsim Alanı Esksik !"    
     ControlToValidate="txtIsim" Font-Size="Small" style="font-weight: 700" ></asp:RequiredFieldValidator></li>
     <li><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Soyisim alanı Esksik !"    
     ControlToValidate="txtSoyisim" Font-Size="Small" style="font-weight: 700" ></asp:RequiredFieldValidator></li>
     <li><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Telefon Alanı Esksik !"    
     ControlToValidate="txtTelefon" Font-Size="Small" style="font-weight: 700" ></asp:RequiredFieldValidator></li>
     <li><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Email Alanı Eksik !"  
     ControlToValidate="txtEmail" Font-Size="Small" style="font-weight: 700" ></asp:RequiredFieldValidator></li>   
    <li> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ErrorMessage="* Email Alanı Uygun Formatta değil !" ControlToValidate="txtEmail" 
    Font-Size="Small" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            style="font-weight: 700"></asp:RegularExpressionValidator></li>
    <li><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Mesaj Alanı Eksik !"
    ControlToValidate="txtMesaj" Font-Size="Small" style="font-weight: 700"></asp:RequiredFieldValidator> </li>     
    <li> 
        <asp:RegularExpressionValidator ID="txtAdres_uzunlukKontrolu" Display="dynamic" 
    ControlToValidate="txtMesaj"  ValidationExpression="^([\S\s]{0,500})$"  
    runat="server" ErrorMessage="* En fazla 500 Karakter yazabilirsiniz." 
    Font-Size="Small" style="font-weight: 700"></asp:RegularExpressionValidator></li>  
  </ul>  
  
  
  
  
  
  </fieldset>
        
    </div>
</div>

             </div>
            
             <div class="testimonials">
                    <h2>Müşteri memnuniyetini önemsiyoruz..</h2>
                    <p>İşbirliği yaptığımız müşterilerimizin hiçbirisini kaybetmeyi göze almıyoruz.  "%100 memnuniyet" sloganı ile en büyük reklam kaynağımızın sizler olduğunu biliyoruz..</p>
                    
                    <div class="testbox">
                    <h4>Yasal mevzuatlardan sizleri haberdar ediyoruz</h4>
                    <p>E-ticaret , sanal mağazacılık konularında en güncel bilgileri SMS ile tüm müşterilerimize bildiriyoruz..</p>
                    </div>
                    
                    <div class="testbox">
                    <h4>Önce siz öğrenin...</h4>
                    <p>Mevzuatlardaki değişikliklerden etkilenmeyin.  Müşterimiz olmanın ayrıcalıkları ile sizlere ücretsiz danışmanlık sunuyoruz</p>
                    </div>             
                    <div class="testbox">
                    <h4>Mobil platformlar ile maliyetleri azaltın.. </h4>
                    <p>Günümüz teknolojileri ile artık  cebinizde taşıdığınız akıllı telefon herşeye yeter hale geldi ! <br /> 
                     En uygun maliyete en güvenilir çözümü sunuyoruz.. </p>
                    </div>               
                    
             </div>                






<%--BU DIVLER TASARIM ICIN OZEL --%>
<div class="clear"></div>
<%--BU DIVLER TASARIM ICIN OZEL --%>


</div>
</div>
</div>
</asp:Content>

